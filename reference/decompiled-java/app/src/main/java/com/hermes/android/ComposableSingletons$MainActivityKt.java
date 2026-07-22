package com.hermes.android;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FlowLayoutKt;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.FlowRowScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.filled.ChatKt;
import androidx.compose.material.icons.filled.AddKt;
import androidx.compose.material.icons.filled.ArrowBackKt;
import androidx.compose.material.icons.filled.CheckCircleKt;
import androidx.compose.material.icons.filled.ChevronRightKt;
import androidx.compose.material.icons.filled.CloseKt;
import androidx.compose.material.icons.filled.ComputerKt;
import androidx.compose.material.icons.filled.ContentCopyKt;
import androidx.compose.material.icons.filled.ImageKt;
import androidx.compose.material.icons.filled.KeyboardArrowDownKt;
import androidx.compose.material.icons.filled.KeyboardKt;
import androidx.compose.material.icons.filled.LockKt;
import androidx.compose.material.icons.filled.MenuKt;
import androidx.compose.material.icons.filled.OpenInBrowserKt;
import androidx.compose.material.icons.filled.QrCode2Kt;
import androidx.compose.material.icons.filled.QrCodeScannerKt;
import androidx.compose.material.icons.filled.RefreshKt;
import androidx.compose.material.icons.filled.RocketLaunchKt;
import androidx.compose.material.icons.filled.SendKt;
import androidx.compose.material.icons.filled.TerminalKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public final class ComposableSingletons$MainActivityKt {
    public static final ComposableSingletons$MainActivityKt INSTANCE = new ComposableSingletons$MainActivityKt();

    /* JADX INFO: renamed from: lambda-1, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f7lambda1 = ComposableLambdaKt.composableLambdaInstance(-1999745081, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-1$1
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
                ComposerKt.traceEventStart(-1999745081, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-1.<anonymous> (MainActivity.kt:649)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.model_switch_apply, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-2, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f18lambda2 = ComposableLambdaKt.composableLambdaInstance(-521199287, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-2$1
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
                ComposerKt.traceEventStart(-521199287, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-2.<anonymous> (MainActivity.kt:653)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.model_switch_later, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-3, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f29lambda3 = ComposableLambdaKt.composableLambdaInstance(-534960116, false, ComposableSingletons$MainActivityKt$lambda3$1.INSTANCE);

    /* JADX INFO: renamed from: lambda-4, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f40lambda4 = ComposableLambdaKt.composableLambdaInstance(943585678, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-4$1
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
                ComposerKt.traceEventStart(943585678, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-4.<anonymous> (MainActivity.kt:596)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.model_switch_title, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-5, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f51lambda5 = ComposableLambdaKt.composableLambdaInstance(1682040586, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-5$1
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
                ComposerKt.traceEventStart(1682040586, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-5.<anonymous> (MainActivity.kt:854)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.base_url_placeholder, composer, 0), (Modifier) null, MainActivityKt.TextMuted, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-6, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f62lambda6 = ComposableLambdaKt.composableLambdaInstance(-777019008, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-6$1
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
                ComposerKt.traceEventStart(-777019008, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-6.<anonymous> (MainActivity.kt:877)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.model_id_label, composer, 0), (Modifier) null, MainActivityKt.TextMuted, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-7, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f73lambda7 = ComposableLambdaKt.composableLambdaInstance(-417604671, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-7$1
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
                ComposerKt.traceEventStart(-417604671, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-7.<anonymous> (MainActivity.kt:878)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.model_id_placeholder, composer, 0), (Modifier) null, MainActivityKt.TextMuted, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-8, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f84lambda8 = ComposableLambdaKt.composableLambdaInstance(-1427269253, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-8$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$Button");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1427269253, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-8.<anonymous> (MainActivity.kt:905)");
                }
                IconKt.Icon-ww6aTOc(LockKt.getLock(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, 0L, composer, 48, 12);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(8)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.oauth_signin_button, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 199680, 0, 131030);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-9, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f92lambda9 = ComposableLambdaKt.composableLambdaInstance(-1434144346, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-9$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$OutlinedButton");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1434144346, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-9.<anonymous> (MainActivity.kt:967)");
                }
                IconKt.Icon-ww6aTOc(QrCode2Kt.getQrCode2(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, MainActivityKt.TextPrimary, composer, 3120, 4);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(8)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_web_pairing, composer, 0), (Modifier) null, MainActivityKt.TextPrimary, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-10, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f8lambda10 = ComposableLambdaKt.composableLambdaInstance(1283296804, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-10$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$Button");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1283296804, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-10.<anonymous> (MainActivity.kt:989)");
                }
                IconKt.Icon-ww6aTOc(RocketLaunchKt.getRocketLaunch(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, 0L, composer, 48, 12);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(8)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_start_install, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(16), (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 199680, 0, 131030);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-11, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f9lambda11 = ComposableLambdaKt.composableLambdaInstance(-1301373202, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-11$1
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
                ComposerKt.traceEventStart(-1301373202, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-11.<anonymous> (MainActivity.kt:1049)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_cancel, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-12, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f10lambda12 = ComposableLambdaKt.composableLambdaInstance(255146247, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-12$1
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
                ComposerKt.traceEventStart(255146247, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-12.<anonymous> (MainActivity.kt:1012)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.select_provider, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 131038);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-13, reason: not valid java name */
    public static Function3<LazyItemScope, Composer, Integer, Unit> f11lambda13 = ComposableLambdaKt.composableLambdaInstance(1207187794, false, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-13$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((LazyItemScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(LazyItemScope lazyItemScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(lazyItemScope, "$this$item");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1207187794, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-13.<anonymous> (MainActivity.kt:1027)");
                }
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.category_popular, composer, 0), PaddingKt.padding-VpY3zN4$default(Modifier.INSTANCE, 0.0f, Dp.m3807constructorimpl(6), 1, (Object) null), MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getPrimary-0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 199728, 0, 131024);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-14, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f12lambda14 = ComposableLambdaKt.composableLambdaInstance(-2069689206, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-14$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$Button");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-2069689206, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-14.<anonymous> (MainActivity.kt:1193)");
                }
                IconKt.Icon-ww6aTOc(RefreshKt.getRefresh(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(18)), 0L, composer, 432, 8);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(6)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_retry_install, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 199680, 0, 131030);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-15, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f13lambda15 = ComposableLambdaKt.composableLambdaInstance(-548974082, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-15$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-548974082, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-15.<anonymous> (MainActivity.kt:1556)");
                }
                Alignment center = Alignment.INSTANCE.getCenter();
                ComposerKt.sourceInformationMarkerStart(composer, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Modifier.Companion companion = Modifier.INSTANCE;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, companion);
                Function0<ComposeUiNode> constructor = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor);
                } else {
                    composer.useNode();
                }
                Composer composerM661constructorimpl = Updater.m661constructorimpl(composer);
                Updater.m668setimpl(composerM661constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.m668setimpl(composerM661constructorimpl, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composerM661constructorimpl.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    composerM661constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    composerM661constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.m668setimpl(composerM661constructorimpl, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScope boxScope = BoxScopeInstance.INSTANCE;
                IconKt.Icon-ww6aTOc(CloseKt.getClose(Icons.INSTANCE.getDefault()), StringResources_androidKt.stringResource(R.string.btn_close, composer, 0), SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(18)), Color.INSTANCE.m1236getWhite0d7_KjU(), composer, 3456, 0);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-16, reason: not valid java name */
    public static Function4<LazyItemScope, Integer, Composer, Integer, Unit> f14lambda16 = ComposableLambdaKt.composableLambdaInstance(245371500, false, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-16$1
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
                ComposerKt.traceEventStart(245371500, i2, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-16.<anonymous> (MainActivity.kt:1600)");
            }
            MainActivityKt.LicenseItem((LicenseEntry) MainActivityKt.THIRD_PARTY_LICENSES.get(i), composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-17, reason: not valid java name */
    public static Function3<LazyItemScope, Composer, Integer, Unit> f15lambda17 = ComposableLambdaKt.composableLambdaInstance(-1885563997, false, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-17$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((LazyItemScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(LazyItemScope lazyItemScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(lazyItemScope, "$this$item");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1885563997, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-17.<anonymous> (MainActivity.kt:1603)");
                }
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(12)), composer, 6);
                TextKt.Text--4IGK_g("Source code for GPL/LGPL components is available upon request and from the upstream homepages listed above.", PaddingKt.padding-VpY3zN4$default(Modifier.INSTANCE, Dp.m3807constructorimpl(8), 0.0f, 2, (Object) null), MainActivityKt.TextMuted, TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3510, 0, 131056);
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(16)), composer, 6);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-18, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f16lambda18 = ComposableLambdaKt.composableLambdaInstance(-1410357891, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-18$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1410357891, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-18.<anonymous> (MainActivity.kt:2060)");
                }
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.mesh_badge_new, composer, 0), PaddingKt.padding-VpY3zN4(Modifier.INSTANCE, Dp.m3807constructorimpl(6), Dp.m3807constructorimpl(2)), Color.INSTANCE.m1236getWhite0d7_KjU(), TextUnitKt.getSp(10), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 1, 0, (Function1) null, (TextStyle) null, composer, 200112, 3456, 118736);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-19, reason: not valid java name */
    public static Function3<FlowRowScope, Composer, Integer, Unit> f17lambda19 = ComposableLambdaKt.composableLambdaInstance(-1586052168, false, new Function3<FlowRowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-19$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((FlowRowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FlowRowScope flowRowScope, Composer composer, int i) {
            int i2;
            Intrinsics.checkNotNullParameter(flowRowScope, "$this$FlowRow");
            if ((i & 6) == 0) {
                i2 = i | (composer.changed(flowRowScope) ? 4 : 2);
            } else {
                i2 = i;
            }
            if ((i2 & 19) != 18 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1586052168, i2, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-19.<anonymous> (MainActivity.kt:2050)");
                }
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.mesh_title, composer, 0), flowRowScope.align(Modifier.INSTANCE, Alignment.INSTANCE.getCenterVertically()), Color.INSTANCE.m1236getWhite0d7_KjU(), TextUnitKt.getSp(16), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 1, 0, (Function1) null, (TextStyle) null, composer, 200064, 3456, 118736);
                SurfaceKt.Surface-T9BRK9s(flowRowScope.align(Modifier.INSTANCE, Alignment.INSTANCE.getCenterVertically()), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.m3807constructorimpl(6)), ColorKt.Color(4282090191L), 0L, 0.0f, 0.0f, (BorderStroke) null, ComposableSingletons$MainActivityKt.INSTANCE.m4246getLambda18$app_release(), composer, 12583296, 120);
                MainActivityKt.BetaBadge(flowRowScope.align(Modifier.INSTANCE, Alignment.INSTANCE.getCenterVertically()), composer, 0, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-20, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f19lambda20 = ComposableLambdaKt.composableLambdaInstance(1450394455, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-20$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1450394455, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-20.<anonymous> (MainActivity.kt:2038)");
                }
                Modifier modifier = PaddingKt.padding-3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, (Object) null), Dp.m3807constructorimpl(16));
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer, 48);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier);
                Function0<ComposeUiNode> constructor = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor);
                } else {
                    composer.useNode();
                }
                Composer composerM661constructorimpl = Updater.m661constructorimpl(composer);
                Updater.m668setimpl(composerM661constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.m668setimpl(composerM661constructorimpl, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composerM661constructorimpl.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    composerM661constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    composerM661constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.m668setimpl(composerM661constructorimpl, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                RowScope rowScope = RowScopeInstance.INSTANCE;
                IconKt.Icon-ww6aTOc(ComputerKt.getComputer(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(30)), ColorKt.Color(4286436348L), composer, 3504, 0);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(14)), composer, 6);
                Modifier modifierWeight$default = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, (Object) null);
                ComposerKt.sourceInformationMarkerStart(composer, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer, 0);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer, modifierWeight$default);
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor2);
                } else {
                    composer.useNode();
                }
                Composer composerM661constructorimpl2 = Updater.m661constructorimpl(composer);
                Updater.m668setimpl(composerM661constructorimpl2, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.m668setimpl(composerM661constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composerM661constructorimpl2.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    composerM661constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                    composerM661constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                }
                Updater.m668setimpl(composerM661constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
                FlowLayoutKt.FlowRow((Modifier) null, Arrangement.INSTANCE.spacedBy-0680j_4(Dp.m3807constructorimpl(6)), Arrangement.INSTANCE.spacedBy-0680j_4(Dp.m3807constructorimpl(4)), 0, 0, (FlowRowOverflow) null, ComposableSingletons$MainActivityKt.INSTANCE.m4247getLambda19$app_release(), composer, 1573296, 57);
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(2)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.mesh_card_desc, composer, 0), (Modifier) null, MainActivityKt.TextSecondary, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                IconKt.Icon-ww6aTOc(ChevronRightKt.getChevronRight(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, MainActivityKt.TextMuted, composer, 3120, 4);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-21, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f20lambda21 = ComposableLambdaKt.composableLambdaInstance(1432073142, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-21$1
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
                ComposerKt.traceEventStart(1432073142, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-21.<anonymous> (MainActivity.kt:2119)");
            }
            IconKt.Icon-ww6aTOc(ArrowBackKt.getArrowBack(Icons.INSTANCE.getDefault()), StringResources_androidKt.stringResource(R.string.btn_back, composer, 0), (Modifier) null, Color.INSTANCE.m1236getWhite0d7_KjU(), composer, 3072, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-22, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f21lambda22 = ComposableLambdaKt.composableLambdaInstance(1791242314, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-22$1
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
                ComposerKt.traceEventStart(1791242314, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-22.<anonymous> (MainActivity.kt:2192)");
            }
            IconKt.Icon-ww6aTOc(ContentCopyKt.getContentCopy(Icons.INSTANCE.getDefault()), StringResources_androidKt.stringResource(R.string.mesh_copy, composer, 0), SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(18)), Color.INSTANCE.m1236getWhite0d7_KjU(), composer, 3456, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-23, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f22lambda23 = ComposableLambdaKt.composableLambdaInstance(-1268483286, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-23$1
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
                ComposerKt.traceEventStart(-1268483286, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-23.<anonymous> (MainActivity.kt:2200)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.mesh_paircode_label, composer, 0), (Modifier) null, MainActivityKt.TextMuted, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-24, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f23lambda24 = ComposableLambdaKt.composableLambdaInstance(-1144569754, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-24$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$OutlinedButton");
            if ((i & 17) == 16 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1144569754, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-24.<anonymous> (MainActivity.kt:2210)");
            }
            IconKt.Icon-ww6aTOc(QrCodeScannerKt.getQrCodeScanner(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(18)), 0L, composer, 432, 8);
            SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(6)), composer, 6);
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.mesh_scan_qr, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-25, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f24lambda25 = ComposableLambdaKt.composableLambdaInstance(691687570, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-25$1
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
                ComposerKt.traceEventStart(691687570, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-25.<anonymous> (MainActivity.kt:2250)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.mesh_dispatch_placeholder, composer, 0), (Modifier) null, MainActivityKt.TextMuted, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-26, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f25lambda26 = ComposableLambdaKt.composableLambdaInstance(-1314602551, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-26$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$Button");
            if ((i & 17) == 16 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1314602551, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-26.<anonymous> (MainActivity.kt:2272)");
            }
            IconKt.Icon-ww6aTOc(SendKt.getSend(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(18)), 0L, composer, 432, 8);
            SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(6)), composer, 6);
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.mesh_dispatch_btn, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-27, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f26lambda27 = ComposableLambdaKt.composableLambdaInstance(242962071, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-27$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(242962071, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-27.<anonymous> (MainActivity.kt:2580)");
                }
                Modifier modifier = PaddingKt.padding-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(20));
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer, 48);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier);
                Function0<ComposeUiNode> constructor = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor);
                } else {
                    composer.useNode();
                }
                Composer composerM661constructorimpl = Updater.m661constructorimpl(composer);
                Updater.m668setimpl(composerM661constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.m668setimpl(composerM661constructorimpl, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composerM661constructorimpl.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    composerM661constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    composerM661constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.m668setimpl(composerM661constructorimpl, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                RowScope rowScope = RowScopeInstance.INSTANCE;
                IconKt.Icon-ww6aTOc(CheckCircleKt.getCheckCircle(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(28)), ColorKt.Color(4281648985L), composer, 3504, 0);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(14)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.pro_activated, composer, 0), (Modifier) null, MainActivityKt.TextPrimary, TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 200064, 0, 131026);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-28, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f27lambda28 = ComposableLambdaKt.composableLambdaInstance(-1466422316, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-28$1
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
                ComposerKt.traceEventStart(-1466422316, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-28.<anonymous> (MainActivity.kt:3135)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-29, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f28lambda29 = ComposableLambdaKt.composableLambdaInstance(1081213776, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-29$1
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
                ComposerKt.traceEventStart(1081213776, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-29.<anonymous> (MainActivity.kt:3128)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_installing_module, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-30, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f30lambda30 = ComposableLambdaKt.composableLambdaInstance(-387920879, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-30$1
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
                ComposerKt.traceEventStart(-387920879, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-30.<anonymous> (MainActivity.kt:3144)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_cancel, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-31, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f31lambda31 = ComposableLambdaKt.composableLambdaInstance(313905048, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-31$1
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
                ComposerKt.traceEventStart(313905048, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-31.<anonymous> (MainActivity.kt:3141)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_failed_unknown, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-32, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f32lambda32 = ComposableLambdaKt.composableLambdaInstance(-136040912, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-32$1
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
                ComposerKt.traceEventStart(-136040912, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-32.<anonymous> (MainActivity.kt:3379)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_save, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-33, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f33lambda33 = ComposableLambdaKt.composableLambdaInstance(-311163214, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-33$1
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
                ComposerKt.traceEventStart(-311163214, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-33.<anonymous> (MainActivity.kt:3382)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_cancel, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-34, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f34lambda34 = ComposableLambdaKt.composableLambdaInstance(1281705507, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-34$1
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
                ComposerKt.traceEventStart(1281705507, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-34.<anonymous> (MainActivity.kt:3238)");
            }
            TextKt.Text--4IGK_g("Base URL", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-35, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f35lambda35 = ComposableLambdaKt.composableLambdaInstance(1273756186, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-35$1
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
                ComposerKt.traceEventStart(1273756186, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-35.<anonymous> (MainActivity.kt:3243)");
            }
            TextKt.Text--4IGK_g("Model ID", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-36, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f36lambda36 = ComposableLambdaKt.composableLambdaInstance(-1712792116, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-36$1
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
                ComposerKt.traceEventStart(-1712792116, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-36.<anonymous> (MainActivity.kt:3251)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.base_url_optional_label, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-37, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f37lambda37 = ComposableLambdaKt.composableLambdaInstance(-1477863604, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-37$1
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
                ComposerKt.traceEventStart(-1477863604, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-37.<anonymous> (MainActivity.kt:3264)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.model_id_optional_label, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-38, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f38lambda38 = ComposableLambdaKt.composableLambdaInstance(-1482369928, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-38$1
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
                ComposerKt.traceEventStart(-1482369928, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-38.<anonymous> (MainActivity.kt:3415)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.reinstall_confirm, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-39, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f39lambda39 = ComposableLambdaKt.composableLambdaInstance(1938931766, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-39$1
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
                ComposerKt.traceEventStart(1938931766, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-39.<anonymous> (MainActivity.kt:3418)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_cancel, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-40, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f41lambda40 = ComposableLambdaKt.composableLambdaInstance(673190161, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-40$1
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
                ComposerKt.traceEventStart(673190161, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-40.<anonymous> (MainActivity.kt:3391)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.reinstall_title, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-41, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f42lambda41 = ComposableLambdaKt.composableLambdaInstance(-1911126288, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-41$1
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
                ComposerKt.traceEventStart(-1911126288, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-41.<anonymous> (MainActivity.kt:3392)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.reinstall_msg, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-42, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f43lambda42 = ComposableLambdaKt.composableLambdaInstance(364455678, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-42$1
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
                ComposerKt.traceEventStart(364455678, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-42.<anonymous> (MainActivity.kt:3544)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_cancel, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-43, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f44lambda43 = ComposableLambdaKt.composableLambdaInstance(-1774951529, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-43$1
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
                ComposerKt.traceEventStart(-1774951529, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-43.<anonymous> (MainActivity.kt:3512)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.settings_language, composer, 0), (Modifier) null, MainActivityKt.TextPrimary, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-44, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f45lambda44 = ComposableLambdaKt.composableLambdaInstance(978628392, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-44$1
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
                ComposerKt.traceEventStart(978628392, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-44.<anonymous> (MainActivity.kt:3567)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_ok, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-45, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f46lambda45 = ComposableLambdaKt.composableLambdaInstance(-1632203090, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-45$1
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
                ComposerKt.traceEventStart(-1632203090, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-45.<anonymous> (MainActivity.kt:3554)");
            }
            IconKt.Icon-ww6aTOc(CheckCircleKt.getCheckCircle(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, ColorKt.Color(4282090191L), composer, 3120, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-46, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f47lambda46 = ComposableLambdaKt.composableLambdaInstance(-1554082001, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-46$1
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
                ComposerKt.traceEventStart(-1554082001, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-46.<anonymous> (MainActivity.kt:3555)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.handoff_paired_title, composer, 0), (Modifier) null, MainActivityKt.TextPrimary, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-47, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f48lambda47 = ComposableLambdaKt.composableLambdaInstance(-1213827702, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-47$1
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
                ComposerKt.traceEventStart(-1213827702, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-47.<anonymous> (MainActivity.kt:3580)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_ok, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-48, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f49lambda48 = ComposableLambdaKt.composableLambdaInstance(-1068977327, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-48$1
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
                ComposerKt.traceEventStart(-1068977327, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-48.<anonymous> (MainActivity.kt:3577)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.handoff_error_title, composer, 0), (Modifier) null, MainActivityKt.TextPrimary, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-49, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f50lambda49 = ComposableLambdaKt.composableLambdaInstance(-435643940, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-49$1
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
                ComposerKt.traceEventStart(-435643940, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-49.<anonymous> (MainActivity.kt:3598)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-50, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f52lambda50 = ComposableLambdaKt.composableLambdaInstance(2111992152, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-50$1
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
                ComposerKt.traceEventStart(2111992152, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-50.<anonymous> (MainActivity.kt:3590)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.handoff_receiving_title, composer, 0), (Modifier) null, MainActivityKt.TextPrimary, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-51, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f53lambda51 = ComposableLambdaKt.composableLambdaInstance(-472324297, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-51$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-472324297, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-51.<anonymous> (MainActivity.kt:3592)");
                }
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                Modifier.Companion companion = Modifier.INSTANCE;
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer, 48);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, companion);
                Function0<ComposeUiNode> constructor = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor);
                } else {
                    composer.useNode();
                }
                Composer composerM661constructorimpl = Updater.m661constructorimpl(composer);
                Updater.m668setimpl(composerM661constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.m668setimpl(composerM661constructorimpl, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composerM661constructorimpl.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    composerM661constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    composerM661constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.m668setimpl(composerM661constructorimpl, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                RowScope rowScope = RowScopeInstance.INSTANCE;
                ProgressIndicatorKt.CircularProgressIndicator-LxG7B9w(SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(20)), ColorKt.Color(4282090191L), Dp.m3807constructorimpl(2), 0L, 0, composer, 438, 24);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(12)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.handoff_receiving_msg, composer, 0), (Modifier) null, MainActivityKt.TextSecondary, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-52, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f54lambda52 = ComposableLambdaKt.composableLambdaInstance(-567815586, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-52$1
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
                ComposerKt.traceEventStart(-567815586, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-52.<anonymous> (MainActivity.kt:3626)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.handoff_open_chat, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-53, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f55lambda53 = ComposableLambdaKt.composableLambdaInstance(101597621, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-53$1
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
                ComposerKt.traceEventStart(101597621, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-53.<anonymous> (MainActivity.kt:3628)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_ok, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-54, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f56lambda54 = ComposableLambdaKt.composableLambdaInstance(978268316, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-54$1
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
                ComposerKt.traceEventStart(978268316, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-54.<anonymous> (MainActivity.kt:3633)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.handoff_open_later, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-55, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f57lambda55 = ComposableLambdaKt.composableLambdaInstance(-1771758573, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-55$1
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
                ComposerKt.traceEventStart(-1771758573, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-55.<anonymous> (MainActivity.kt:3607)");
            }
            IconKt.Icon-ww6aTOc(CheckCircleKt.getCheckCircle(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, ColorKt.Color(4280468830L), composer, 3120, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-56, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f58lambda56 = ComposableLambdaKt.composableLambdaInstance(-998716622, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-56$1
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
                ComposerKt.traceEventStart(-998716622, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-56.<anonymous> (MainActivity.kt:3608)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.handoff_received_title, composer, 0), (Modifier) null, MainActivityKt.TextPrimary, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-57, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f59lambda57 = ComposableLambdaKt.composableLambdaInstance(1416436594, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-57$1
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
                ComposerKt.traceEventStart(1416436594, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-57.<anonymous> (MainActivity.kt:3652)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-58, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f60lambda58 = ComposableLambdaKt.composableLambdaInstance(-1211223178, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-58$1
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
                ComposerKt.traceEventStart(-1211223178, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-58.<anonymous> (MainActivity.kt:3644)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.handoff_sync_back_title, composer, 0), (Modifier) null, MainActivityKt.TextPrimary, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-59, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f61lambda59 = ComposableLambdaKt.composableLambdaInstance(279345527, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-59$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(279345527, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-59.<anonymous> (MainActivity.kt:3646)");
                }
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                Modifier.Companion companion = Modifier.INSTANCE;
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer, 48);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, companion);
                Function0<ComposeUiNode> constructor = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor);
                } else {
                    composer.useNode();
                }
                Composer composerM661constructorimpl = Updater.m661constructorimpl(composer);
                Updater.m668setimpl(composerM661constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.m668setimpl(composerM661constructorimpl, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composerM661constructorimpl.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    composerM661constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    composerM661constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.m668setimpl(composerM661constructorimpl, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                RowScope rowScope = RowScopeInstance.INSTANCE;
                ProgressIndicatorKt.CircularProgressIndicator-LxG7B9w(SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(20)), ColorKt.Color(4282090191L), Dp.m3807constructorimpl(2), 0L, 0, composer, 438, 24);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(12)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.handoff_sync_back_msg, composer, 0), (Modifier) null, MainActivityKt.TextSecondary, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-60, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f63lambda60 = ComposableLambdaKt.composableLambdaInstance(-1688507494, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-60$1
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
                ComposerKt.traceEventStart(-1688507494, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-60.<anonymous> (MainActivity.kt:3673)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_ok, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-61, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f64lambda61 = ComposableLambdaKt.composableLambdaInstance(2115185108, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-61$1
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
                ComposerKt.traceEventStart(2115185108, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-61.<anonymous> (MainActivity.kt:3661)");
            }
            IconKt.Icon-ww6aTOc(CheckCircleKt.getCheckCircle(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, ColorKt.Color(4280468830L), composer, 3120, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-62, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f65lambda62 = ComposableLambdaKt.composableLambdaInstance(-1406740237, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-62$1
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
                ComposerKt.traceEventStart(-1406740237, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-62.<anonymous> (MainActivity.kt:3662)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.handoff_sync_back_done_title, composer, 0), (Modifier) null, MainActivityKt.TextPrimary, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-63, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f66lambda63 = ComposableLambdaKt.composableLambdaInstance(838511351, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-63$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(838511351, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-63.<anonymous> (MainActivity.kt:3729)");
                }
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.badge_beta, composer, 0), PaddingKt.padding-VpY3zN4(Modifier.INSTANCE, Dp.m3807constructorimpl(6), Dp.m3807constructorimpl(2)), ColorKt.Color(4294688548L), TextUnitKt.getSp(9), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 1, 0, (Function1) null, (TextStyle) null, composer, 200112, 3456, 118736);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-64, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f67lambda64 = ComposableLambdaKt.composableLambdaInstance(-70286784, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-64$1
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
                ComposerKt.traceEventStart(-70286784, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-64.<anonymous> (MainActivity.kt:4336)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.terminal_open_sessions, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-65, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f68lambda65 = ComposableLambdaKt.composableLambdaInstance(1943558594, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-65$1
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
                ComposerKt.traceEventStart(1943558594, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-65.<anonymous> (MainActivity.kt:4339)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_ok, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-66, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f69lambda66 = ComposableLambdaKt.composableLambdaInstance(-1959739129, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-66$1
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
                ComposerKt.traceEventStart(-1959739129, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-66.<anonymous> (MainActivity.kt:4330)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.terminal_session_limit_title, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-67, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f70lambda67 = ComposableLambdaKt.composableLambdaInstance(-952816440, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-67$1
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
                ComposerKt.traceEventStart(-952816440, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-67.<anonymous> (MainActivity.kt:4331)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.terminal_session_limit_msg, new Object[]{8}, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-68, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f71lambda68 = ComposableLambdaKt.composableLambdaInstance(184102623, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-68$1
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
                ComposerKt.traceEventStart(184102623, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-68.<anonymous> (MainActivity.kt:4351)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_ok, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-69, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f72lambda69 = ComposableLambdaKt.composableLambdaInstance(-1705349722, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-69$1
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
                ComposerKt.traceEventStart(-1705349722, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-69.<anonymous> (MainActivity.kt:4348)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.sqlite_error_title, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-70, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f74lambda70 = ComposableLambdaKt.composableLambdaInstance(-698427033, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-70$1
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
                ComposerKt.traceEventStart(-698427033, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-70.<anonymous> (MainActivity.kt:4349)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.sqlite_error_msg, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-71, reason: not valid java name */
    public static Function3<LazyItemScope, Composer, Integer, Unit> f75lambda71 = ComposableLambdaKt.composableLambdaInstance(679805049, false, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-71$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((LazyItemScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(LazyItemScope lazyItemScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(lazyItemScope, "$this$item");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(679805049, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-71.<anonymous> (MainActivity.kt:4482)");
                }
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.terminal_active, composer, 0), PaddingKt.padding-qDBjuR0$default(Modifier.INSTANCE, Dp.m3807constructorimpl(16), Dp.m3807constructorimpl(8), 0.0f, Dp.m3807constructorimpl(4), 4, (Object) null), Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.5f, 0.0f, 0.0f, 0.0f, 14, null), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 200112, 0, 131024);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-72, reason: not valid java name */
    public static Function3<LazyItemScope, Composer, Integer, Unit> f76lambda72 = ComposableLambdaKt.composableLambdaInstance(682342256, false, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-72$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((LazyItemScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(LazyItemScope lazyItemScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(lazyItemScope, "$this$item");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(682342256, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-72.<anonymous> (MainActivity.kt:4552)");
                }
                float f = 4;
                DividerKt.HorizontalDivider-9IZ8Weo(PaddingKt.padding-VpY3zN4$default(Modifier.INSTANCE, 0.0f, Dp.m3807constructorimpl(f), 1, (Object) null), 0.0f, Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.08f, 0.0f, 0.0f, 0.0f, 14, null), composer, 390, 2);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.terminal_history, composer, 0), PaddingKt.padding-qDBjuR0$default(Modifier.INSTANCE, Dp.m3807constructorimpl(16), Dp.m3807constructorimpl(f), 0.0f, Dp.m3807constructorimpl(f), 4, (Object) null), Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.5f, 0.0f, 0.0f, 0.0f, 14, null), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 200112, 0, 131024);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-73, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f77lambda73 = ComposableLambdaKt.composableLambdaInstance(-1163523591, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-73$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1163523591, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-73.<anonymous> (MainActivity.kt:4662)");
                }
                Modifier modifier = PaddingKt.padding-VpY3zN4(Modifier.INSTANCE, Dp.m3807constructorimpl(6), Dp.m3807constructorimpl(10));
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                Arrangement.Horizontal center = Arrangement.INSTANCE.getCenter();
                ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(center, centerVertically, composer, 54);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier);
                Function0<ComposeUiNode> constructor = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor);
                } else {
                    composer.useNode();
                }
                Composer composerM661constructorimpl = Updater.m661constructorimpl(composer);
                Updater.m668setimpl(composerM661constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.m668setimpl(composerM661constructorimpl, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composerM661constructorimpl.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    composerM661constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    composerM661constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.m668setimpl(composerM661constructorimpl, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                RowScope rowScope = RowScopeInstance.INSTANCE;
                IconKt.Icon-ww6aTOc(KeyboardKt.getKeyboard(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(16)), Color.INSTANCE.m1236getWhite0d7_KjU(), composer, 3504, 0);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(5)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.terminal_keyboard, composer, 0), (Modifier) null, Color.INSTANCE.m1236getWhite0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, TextOverflow.INSTANCE.m3745getEllipsisgIe3tQ8(), false, 1, 0, (Function1) null, (TextStyle) null, composer, 3456, 3504, 116722);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-74, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f78lambda74 = ComposableLambdaKt.composableLambdaInstance(934908848, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-74$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(934908848, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-74.<anonymous> (MainActivity.kt:4680)");
                }
                Modifier modifier = PaddingKt.padding-VpY3zN4(Modifier.INSTANCE, Dp.m3807constructorimpl(6), Dp.m3807constructorimpl(10));
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                Arrangement.Horizontal center = Arrangement.INSTANCE.getCenter();
                ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(center, centerVertically, composer, 54);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier);
                Function0<ComposeUiNode> constructor = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor);
                } else {
                    composer.useNode();
                }
                Composer composerM661constructorimpl = Updater.m661constructorimpl(composer);
                Updater.m668setimpl(composerM661constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.m668setimpl(composerM661constructorimpl, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composerM661constructorimpl.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    composerM661constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    composerM661constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.m668setimpl(composerM661constructorimpl, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                RowScope rowScope = RowScopeInstance.INSTANCE;
                IconKt.Icon-ww6aTOc(AddKt.getAdd(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(16)), Color.INSTANCE.m1236getWhite0d7_KjU(), composer, 3504, 0);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(5)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.terminal_new_chat, composer, 0), (Modifier) null, Color.INSTANCE.m1236getWhite0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, TextOverflow.INSTANCE.m3745getEllipsisgIe3tQ8(), false, 1, 0, (Function1) null, (TextStyle) null, composer, 3456, 3504, 116722);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-75, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f79lambda75 = ComposableLambdaKt.composableLambdaInstance(476273329, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-75$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(476273329, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-75.<anonymous> (MainActivity.kt:4698)");
                }
                Modifier modifier = PaddingKt.padding-VpY3zN4(Modifier.INSTANCE, Dp.m3807constructorimpl(6), Dp.m3807constructorimpl(10));
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                Arrangement.Horizontal center = Arrangement.INSTANCE.getCenter();
                ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(center, centerVertically, composer, 54);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier);
                Function0<ComposeUiNode> constructor = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor);
                } else {
                    composer.useNode();
                }
                Composer composerM661constructorimpl = Updater.m661constructorimpl(composer);
                Updater.m668setimpl(composerM661constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.m668setimpl(composerM661constructorimpl, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composerM661constructorimpl.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    composerM661constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    composerM661constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.m668setimpl(composerM661constructorimpl, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                RowScope rowScope = RowScopeInstance.INSTANCE;
                IconKt.Icon-ww6aTOc(TerminalKt.getTerminal(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(16)), Color.INSTANCE.m1236getWhite0d7_KjU(), composer, 3504, 0);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(5)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.terminal_shell, composer, 0), (Modifier) null, Color.INSTANCE.m1236getWhite0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, TextOverflow.INSTANCE.m3745getEllipsisgIe3tQ8(), false, 1, 0, (Function1) null, (TextStyle) null, composer, 3456, 3504, 116722);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-76, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f80lambda76 = ComposableLambdaKt.composableLambdaInstance(620230812, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-76$1
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
                ComposerKt.traceEventStart(620230812, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-76.<anonymous> (MainActivity.kt:4741)");
            }
            IconKt.Icon-ww6aTOc(MenuKt.getMenu(Icons.INSTANCE.getDefault()), StringResources_androidKt.stringResource(R.string.terminal_sessions, composer, 0), SizeKt.size-3ABfNKs(PaddingKt.padding-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(8)), Dp.m3807constructorimpl(18)), Color.INSTANCE.m1236getWhite0d7_KjU(), composer, 3456, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-77, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f81lambda77 = ComposableLambdaKt.composableLambdaInstance(-1940133229, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-77$1
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
                ComposerKt.traceEventStart(-1940133229, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-77.<anonymous> (MainActivity.kt:4785)");
            }
            IconKt.Icon-ww6aTOc(ImageKt.getImage(Icons.INSTANCE.getDefault()), StringResources_androidKt.stringResource(R.string.terminal_attach_image, composer, 0), SizeKt.size-3ABfNKs(PaddingKt.padding-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(8)), Dp.m3807constructorimpl(18)), Color.INSTANCE.m1236getWhite0d7_KjU(), composer, 3456, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-78, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f82lambda78 = ComposableLambdaKt.composableLambdaInstance(-1148284108, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-78$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1148284108, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-78.<anonymous> (MainActivity.kt:4810)");
                }
                IconKt.Icon-ww6aTOc(ChatKt.getChat(Icons.AutoMirrored.Filled.INSTANCE), StringResources_androidKt.stringResource(R.string.chatskin_switch_chat, composer, 0), SizeKt.size-3ABfNKs(PaddingKt.padding-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(8)), Dp.m3807constructorimpl(18)), Color.INSTANCE.m1236getWhite0d7_KjU(), composer, 3456, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-79, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f83lambda79 = ComposableLambdaKt.composableLambdaInstance(512084820, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-79$1
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
                ComposerKt.traceEventStart(512084820, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-79.<anonymous> (MainActivity.kt:4833)");
            }
            IconKt.Icon-ww6aTOc(KeyboardKt.getKeyboard(Icons.INSTANCE.getDefault()), "Toggle keyboard", SizeKt.size-3ABfNKs(PaddingKt.padding-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(8)), Dp.m3807constructorimpl(18)), Color.INSTANCE.m1236getWhite0d7_KjU(), composer, 3504, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-80, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f85lambda80 = ComposableLambdaKt.composableLambdaInstance(1681645322, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-80$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1681645322, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-80.<anonymous> (MainActivity.kt:4937)");
                }
                Alignment center = Alignment.INSTANCE.getCenter();
                ComposerKt.sourceInformationMarkerStart(composer, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Modifier.Companion companion = Modifier.INSTANCE;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, companion);
                Function0<ComposeUiNode> constructor = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor);
                } else {
                    composer.useNode();
                }
                Composer composerM661constructorimpl = Updater.m661constructorimpl(composer);
                Updater.m668setimpl(composerM661constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.m668setimpl(composerM661constructorimpl, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composerM661constructorimpl.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    composerM661constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    composerM661constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.m668setimpl(composerM661constructorimpl, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScope boxScope = BoxScopeInstance.INSTANCE;
                IconKt.Icon-ww6aTOc(KeyboardArrowDownKt.getKeyboardArrowDown(Icons.INSTANCE.getDefault()), StringResources_androidKt.stringResource(R.string.terminal_scroll_to_bottom, composer, 0), SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(26)), Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.85f, 0.0f, 0.0f, 0.0f, 14, null), composer, 3456, 0);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-81, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f86lambda81 = ComposableLambdaKt.composableLambdaInstance(559190013, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-81$1
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
                ComposerKt.traceEventStart(559190013, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-81.<anonymous> (MainActivity.kt:5297)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.oauth_codex_title, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 131038);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-82, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f87lambda82 = ComposableLambdaKt.composableLambdaInstance(-1582432602, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-82$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$OutlinedButton");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1582432602, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-82.<anonymous> (MainActivity.kt:5335)");
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

    /* JADX INFO: renamed from: lambda-83, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f88lambda83 = ComposableLambdaKt.composableLambdaInstance(238882984, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-83$1
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
                ComposerKt.traceEventStart(238882984, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-83.<anonymous> (MainActivity.kt:5419)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.oauth_xai_title, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 131038);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-84, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f89lambda84 = ComposableLambdaKt.composableLambdaInstance(-763776656, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-84$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$OutlinedButton");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-763776656, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-84.<anonymous> (MainActivity.kt:5464)");
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

    /* JADX INFO: renamed from: lambda-85, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f90lambda85 = ComposableLambdaKt.composableLambdaInstance(961113624, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-85$1
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
                ComposerKt.traceEventStart(961113624, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-85.<anonymous> (MainActivity.kt:5479)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.oauth_xai_paste_label, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3072, 0, 131062);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-86, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f91lambda86 = ComposableLambdaKt.composableLambdaInstance(-1520724626, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-86$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$Button");
            if ((i & 17) == 16 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1520724626, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-86.<anonymous> (MainActivity.kt:5487)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.oauth_xai_paste_submit, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3072, 0, 131062);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: getLambda-1$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4237getLambda1$app_release() {
        return f7lambda1;
    }

    /* JADX INFO: renamed from: getLambda-10$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4238getLambda10$app_release() {
        return f8lambda10;
    }

    /* JADX INFO: renamed from: getLambda-11$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4239getLambda11$app_release() {
        return f9lambda11;
    }

    /* JADX INFO: renamed from: getLambda-12$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4240getLambda12$app_release() {
        return f10lambda12;
    }

    /* JADX INFO: renamed from: getLambda-13$app_release, reason: not valid java name */
    public final Function3<LazyItemScope, Composer, Integer, Unit> m4241getLambda13$app_release() {
        return f11lambda13;
    }

    /* JADX INFO: renamed from: getLambda-14$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4242getLambda14$app_release() {
        return f12lambda14;
    }

    /* JADX INFO: renamed from: getLambda-15$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4243getLambda15$app_release() {
        return f13lambda15;
    }

    /* JADX INFO: renamed from: getLambda-16$app_release, reason: not valid java name */
    public final Function4<LazyItemScope, Integer, Composer, Integer, Unit> m4244getLambda16$app_release() {
        return f14lambda16;
    }

    /* JADX INFO: renamed from: getLambda-17$app_release, reason: not valid java name */
    public final Function3<LazyItemScope, Composer, Integer, Unit> m4245getLambda17$app_release() {
        return f15lambda17;
    }

    /* JADX INFO: renamed from: getLambda-18$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4246getLambda18$app_release() {
        return f16lambda18;
    }

    /* JADX INFO: renamed from: getLambda-19$app_release, reason: not valid java name */
    public final Function3<FlowRowScope, Composer, Integer, Unit> m4247getLambda19$app_release() {
        return f17lambda19;
    }

    /* JADX INFO: renamed from: getLambda-2$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4248getLambda2$app_release() {
        return f18lambda2;
    }

    /* JADX INFO: renamed from: getLambda-20$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4249getLambda20$app_release() {
        return f19lambda20;
    }

    /* JADX INFO: renamed from: getLambda-21$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4250getLambda21$app_release() {
        return f20lambda21;
    }

    /* JADX INFO: renamed from: getLambda-22$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4251getLambda22$app_release() {
        return f21lambda22;
    }

    /* JADX INFO: renamed from: getLambda-23$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4252getLambda23$app_release() {
        return f22lambda23;
    }

    /* JADX INFO: renamed from: getLambda-24$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4253getLambda24$app_release() {
        return f23lambda24;
    }

    /* JADX INFO: renamed from: getLambda-25$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4254getLambda25$app_release() {
        return f24lambda25;
    }

    /* JADX INFO: renamed from: getLambda-26$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4255getLambda26$app_release() {
        return f25lambda26;
    }

    /* JADX INFO: renamed from: getLambda-27$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4256getLambda27$app_release() {
        return f26lambda27;
    }

    /* JADX INFO: renamed from: getLambda-28$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4257getLambda28$app_release() {
        return f27lambda28;
    }

    /* JADX INFO: renamed from: getLambda-29$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4258getLambda29$app_release() {
        return f28lambda29;
    }

    /* JADX INFO: renamed from: getLambda-3$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4259getLambda3$app_release() {
        return f29lambda3;
    }

    /* JADX INFO: renamed from: getLambda-30$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4260getLambda30$app_release() {
        return f30lambda30;
    }

    /* JADX INFO: renamed from: getLambda-31$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4261getLambda31$app_release() {
        return f31lambda31;
    }

    /* JADX INFO: renamed from: getLambda-32$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4262getLambda32$app_release() {
        return f32lambda32;
    }

    /* JADX INFO: renamed from: getLambda-33$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4263getLambda33$app_release() {
        return f33lambda33;
    }

    /* JADX INFO: renamed from: getLambda-34$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4264getLambda34$app_release() {
        return f34lambda34;
    }

    /* JADX INFO: renamed from: getLambda-35$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4265getLambda35$app_release() {
        return f35lambda35;
    }

    /* JADX INFO: renamed from: getLambda-36$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4266getLambda36$app_release() {
        return f36lambda36;
    }

    /* JADX INFO: renamed from: getLambda-37$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4267getLambda37$app_release() {
        return f37lambda37;
    }

    /* JADX INFO: renamed from: getLambda-38$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4268getLambda38$app_release() {
        return f38lambda38;
    }

    /* JADX INFO: renamed from: getLambda-39$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4269getLambda39$app_release() {
        return f39lambda39;
    }

    /* JADX INFO: renamed from: getLambda-4$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4270getLambda4$app_release() {
        return f40lambda4;
    }

    /* JADX INFO: renamed from: getLambda-40$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4271getLambda40$app_release() {
        return f41lambda40;
    }

    /* JADX INFO: renamed from: getLambda-41$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4272getLambda41$app_release() {
        return f42lambda41;
    }

    /* JADX INFO: renamed from: getLambda-42$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4273getLambda42$app_release() {
        return f43lambda42;
    }

    /* JADX INFO: renamed from: getLambda-43$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4274getLambda43$app_release() {
        return f44lambda43;
    }

    /* JADX INFO: renamed from: getLambda-44$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4275getLambda44$app_release() {
        return f45lambda44;
    }

    /* JADX INFO: renamed from: getLambda-45$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4276getLambda45$app_release() {
        return f46lambda45;
    }

    /* JADX INFO: renamed from: getLambda-46$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4277getLambda46$app_release() {
        return f47lambda46;
    }

    /* JADX INFO: renamed from: getLambda-47$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4278getLambda47$app_release() {
        return f48lambda47;
    }

    /* JADX INFO: renamed from: getLambda-48$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4279getLambda48$app_release() {
        return f49lambda48;
    }

    /* JADX INFO: renamed from: getLambda-49$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4280getLambda49$app_release() {
        return f50lambda49;
    }

    /* JADX INFO: renamed from: getLambda-5$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4281getLambda5$app_release() {
        return f51lambda5;
    }

    /* JADX INFO: renamed from: getLambda-50$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4282getLambda50$app_release() {
        return f52lambda50;
    }

    /* JADX INFO: renamed from: getLambda-51$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4283getLambda51$app_release() {
        return f53lambda51;
    }

    /* JADX INFO: renamed from: getLambda-52$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4284getLambda52$app_release() {
        return f54lambda52;
    }

    /* JADX INFO: renamed from: getLambda-53$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4285getLambda53$app_release() {
        return f55lambda53;
    }

    /* JADX INFO: renamed from: getLambda-54$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4286getLambda54$app_release() {
        return f56lambda54;
    }

    /* JADX INFO: renamed from: getLambda-55$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4287getLambda55$app_release() {
        return f57lambda55;
    }

    /* JADX INFO: renamed from: getLambda-56$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4288getLambda56$app_release() {
        return f58lambda56;
    }

    /* JADX INFO: renamed from: getLambda-57$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4289getLambda57$app_release() {
        return f59lambda57;
    }

    /* JADX INFO: renamed from: getLambda-58$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4290getLambda58$app_release() {
        return f60lambda58;
    }

    /* JADX INFO: renamed from: getLambda-59$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4291getLambda59$app_release() {
        return f61lambda59;
    }

    /* JADX INFO: renamed from: getLambda-6$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4292getLambda6$app_release() {
        return f62lambda6;
    }

    /* JADX INFO: renamed from: getLambda-60$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4293getLambda60$app_release() {
        return f63lambda60;
    }

    /* JADX INFO: renamed from: getLambda-61$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4294getLambda61$app_release() {
        return f64lambda61;
    }

    /* JADX INFO: renamed from: getLambda-62$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4295getLambda62$app_release() {
        return f65lambda62;
    }

    /* JADX INFO: renamed from: getLambda-63$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4296getLambda63$app_release() {
        return f66lambda63;
    }

    /* JADX INFO: renamed from: getLambda-64$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4297getLambda64$app_release() {
        return f67lambda64;
    }

    /* JADX INFO: renamed from: getLambda-65$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4298getLambda65$app_release() {
        return f68lambda65;
    }

    /* JADX INFO: renamed from: getLambda-66$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4299getLambda66$app_release() {
        return f69lambda66;
    }

    /* JADX INFO: renamed from: getLambda-67$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4300getLambda67$app_release() {
        return f70lambda67;
    }

    /* JADX INFO: renamed from: getLambda-68$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4301getLambda68$app_release() {
        return f71lambda68;
    }

    /* JADX INFO: renamed from: getLambda-69$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4302getLambda69$app_release() {
        return f72lambda69;
    }

    /* JADX INFO: renamed from: getLambda-7$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4303getLambda7$app_release() {
        return f73lambda7;
    }

    /* JADX INFO: renamed from: getLambda-70$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4304getLambda70$app_release() {
        return f74lambda70;
    }

    /* JADX INFO: renamed from: getLambda-71$app_release, reason: not valid java name */
    public final Function3<LazyItemScope, Composer, Integer, Unit> m4305getLambda71$app_release() {
        return f75lambda71;
    }

    /* JADX INFO: renamed from: getLambda-72$app_release, reason: not valid java name */
    public final Function3<LazyItemScope, Composer, Integer, Unit> m4306getLambda72$app_release() {
        return f76lambda72;
    }

    /* JADX INFO: renamed from: getLambda-73$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4307getLambda73$app_release() {
        return f77lambda73;
    }

    /* JADX INFO: renamed from: getLambda-74$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4308getLambda74$app_release() {
        return f78lambda74;
    }

    /* JADX INFO: renamed from: getLambda-75$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4309getLambda75$app_release() {
        return f79lambda75;
    }

    /* JADX INFO: renamed from: getLambda-76$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4310getLambda76$app_release() {
        return f80lambda76;
    }

    /* JADX INFO: renamed from: getLambda-77$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4311getLambda77$app_release() {
        return f81lambda77;
    }

    /* JADX INFO: renamed from: getLambda-78$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4312getLambda78$app_release() {
        return f82lambda78;
    }

    /* JADX INFO: renamed from: getLambda-79$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4313getLambda79$app_release() {
        return f83lambda79;
    }

    /* JADX INFO: renamed from: getLambda-8$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4314getLambda8$app_release() {
        return f84lambda8;
    }

    /* JADX INFO: renamed from: getLambda-80$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4315getLambda80$app_release() {
        return f85lambda80;
    }

    /* JADX INFO: renamed from: getLambda-81$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4316getLambda81$app_release() {
        return f86lambda81;
    }

    /* JADX INFO: renamed from: getLambda-82$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4317getLambda82$app_release() {
        return f87lambda82;
    }

    /* JADX INFO: renamed from: getLambda-83$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4318getLambda83$app_release() {
        return f88lambda83;
    }

    /* JADX INFO: renamed from: getLambda-84$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4319getLambda84$app_release() {
        return f89lambda84;
    }

    /* JADX INFO: renamed from: getLambda-85$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4320getLambda85$app_release() {
        return f90lambda85;
    }

    /* JADX INFO: renamed from: getLambda-86$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4321getLambda86$app_release() {
        return f91lambda86;
    }

    /* JADX INFO: renamed from: getLambda-9$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4322getLambda9$app_release() {
        return f92lambda9;
    }
}
