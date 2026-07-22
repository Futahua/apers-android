package com.hermes.android.ui.localllm;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.filled.ArrowBackKt;
import androidx.compose.material.icons.filled.BoltKt;
import androidx.compose.material.icons.filled.MemoryKt;
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
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class ComposableSingletons$LocalLlmSetupScreenKt {
    public static final ComposableSingletons$LocalLlmSetupScreenKt INSTANCE = new ComposableSingletons$LocalLlmSetupScreenKt();

    /* JADX INFO: renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f18lambda1 = ComposableLambdaKt.composableLambdaInstance(1109458687, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-1$1
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
                ComposerKt.traceEventStart(1109458687, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-1.<anonymous> (LocalLlmSetupScreen.kt:551)");
            }
            IconKt.Icon-ww6aTOc(ArrowBackKt.getArrowBack(Icons.AutoMirrored.Filled.INSTANCE), (String) null, (Modifier) null, LocalLlmSetupScreenKt.TextPrimary, composer, 3120, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-2, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f26lambda2 = ComposableLambdaKt.composableLambdaInstance(-935989823, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-2$1
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
                ComposerKt.traceEventStart(-935989823, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-2.<anonymous> (LocalLlmSetupScreen.kt:632)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_clear_and_retry, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3072, 0, 131062);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-3, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f27lambda3 = ComposableLambdaKt.composableLambdaInstance(1579313739, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-3$1
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
                ComposerKt.traceEventStart(1579313739, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-3.<anonymous> (LocalLlmSetupScreen.kt:660)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_retry, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3072, 0, 131062);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-4, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f28lambda4 = ComposableLambdaKt.composableLambdaInstance(-158796487, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-4$1
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
                ComposerKt.traceEventStart(-158796487, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-4.<anonymous> (LocalLlmSetupScreen.kt:675)");
            }
            IconKt.Icon-ww6aTOc(MemoryKt.getMemory(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(22)), LocalLlmSetupScreenKt.TextPrimary, composer, 3504, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-5, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f29lambda5 = ComposableLambdaKt.composableLambdaInstance(-502190797, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-5$1
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
                ComposerKt.traceEventStart(-502190797, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-5.<anonymous> (LocalLlmSetupScreen.kt:752)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_use_engine, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(15), (FontStyle) null, FontWeight.Companion.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 199680, 0, 131030);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-6, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f30lambda6 = ComposableLambdaKt.composableLambdaInstance(682423213, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-6$1
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
                ComposerKt.traceEventStart(682423213, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-6.<anonymous> (LocalLlmSetupScreen.kt:799)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_download_button, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(14), (FontStyle) null, FontWeight.Companion.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 199680, 0, 131030);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-7, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f31lambda7 = ComposableLambdaKt.composableLambdaInstance(-1488821962, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-7$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1488821962, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-7.<anonymous> (LocalLlmSetupScreen.kt:812)");
                }
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_custom_url_hint, composer, 0), (Modifier) null, LocalLlmSetupScreenKt.TextMuted, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-8, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f32lambda8 = ComposableLambdaKt.composableLambdaInstance(-1399346769, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-8$1
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
                ComposerKt.traceEventStart(-1399346769, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-8.<anonymous> (LocalLlmSetupScreen.kt:834)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_custom_url_download_button, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3072, 0, 131062);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-9, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f33lambda9 = ComposableLambdaKt.composableLambdaInstance(1722038438, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-9$1
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
                ComposerKt.traceEventStart(1722038438, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-9.<anonymous> (LocalLlmSetupScreen.kt:842)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_import_button, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3072, 0, 131062);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-10, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f19lambda10 = ComposableLambdaKt.composableLambdaInstance(-1762800360, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-10$1
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
                ComposerKt.traceEventStart(-1762800360, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-10.<anonymous> (LocalLlmSetupScreen.kt:854)");
            }
            IconKt.Icon-ww6aTOc(BoltKt.getBolt(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(22)), LocalLlmSetupScreenKt.WarnAmber, composer, 3504, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-11, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f20lambda11 = ComposableLambdaKt.composableLambdaInstance(897279393, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-11$1
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
                ComposerKt.traceEventStart(897279393, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-11.<anonymous> (LocalLlmSetupScreen.kt:924)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_npu_module_button, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3072, 0, 131062);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-12, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f21lambda12 = ComposableLambdaKt.composableLambdaInstance(1513501541, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-12$1
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
                ComposerKt.traceEventStart(1513501541, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-12.<anonymous> (LocalLlmSetupScreen.kt:957)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_use_engine, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(15), (FontStyle) null, FontWeight.Companion.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 199680, 0, 131030);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-13, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f22lambda13 = ComposableLambdaKt.composableLambdaInstance(1954876494, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-13$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1954876494, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-13.<anonymous> (LocalLlmSetupScreen.kt:980)");
                }
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_device_unsupported, composer, 0), (Modifier) null, LocalLlmSetupScreenKt.TextSecondary, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(19), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 6, 130034);
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
    public static Function3<RowScope, Composer, Integer, Unit> f23lambda14 = ComposableLambdaKt.composableLambdaInstance(1139776263, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-14$1
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
                ComposerKt.traceEventStart(1139776263, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-14.<anonymous> (LocalLlmSetupScreen.kt:1008)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_delete_confirm_button, composer, 0), (Modifier) null, LocalLlmSetupScreenKt.ErrorRed, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-15, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f24lambda15 = ComposableLambdaKt.composableLambdaInstance(1626849989, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-15$1
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
                ComposerKt.traceEventStart(1626849989, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-15.<anonymous> (LocalLlmSetupScreen.kt:1012)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_delete_cancel_button, composer, 0), (Modifier) null, LocalLlmSetupScreenKt.TextSecondary, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-16, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f25lambda16 = ComposableLambdaKt.composableLambdaInstance(1720942157, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt$lambda-16$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1720942157, i, -1, "com.hermes.android.ui.localllm.ComposableSingletons$LocalLlmSetupScreenKt.lambda-16.<anonymous> (LocalLlmSetupScreen.kt:1080)");
                }
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_engine_active_badge, composer, 0), PaddingKt.padding-VpY3zN4(Modifier.Companion, Dp.constructor-impl(6), Dp.constructor-impl(2)), LocalLlmSetupScreenKt.ActiveGreen, TextUnitKt.getSp(10), (FontStyle) null, FontWeight.Companion.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 200112, 0, 131024);
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
    public final Function2<Composer, Integer, Unit> m77getLambda1$app_release() {
        return f18lambda1;
    }

    /* JADX INFO: renamed from: getLambda-10$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m78getLambda10$app_release() {
        return f19lambda10;
    }

    /* JADX INFO: renamed from: getLambda-11$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m79getLambda11$app_release() {
        return f20lambda11;
    }

    /* JADX INFO: renamed from: getLambda-12$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m80getLambda12$app_release() {
        return f21lambda12;
    }

    /* JADX INFO: renamed from: getLambda-13$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m81getLambda13$app_release() {
        return f22lambda13;
    }

    /* JADX INFO: renamed from: getLambda-14$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m82getLambda14$app_release() {
        return f23lambda14;
    }

    /* JADX INFO: renamed from: getLambda-15$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m83getLambda15$app_release() {
        return f24lambda15;
    }

    /* JADX INFO: renamed from: getLambda-16$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m84getLambda16$app_release() {
        return f25lambda16;
    }

    /* JADX INFO: renamed from: getLambda-2$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m85getLambda2$app_release() {
        return f26lambda2;
    }

    /* JADX INFO: renamed from: getLambda-3$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m86getLambda3$app_release() {
        return f27lambda3;
    }

    /* JADX INFO: renamed from: getLambda-4$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m87getLambda4$app_release() {
        return f28lambda4;
    }

    /* JADX INFO: renamed from: getLambda-5$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m88getLambda5$app_release() {
        return f29lambda5;
    }

    /* JADX INFO: renamed from: getLambda-6$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m89getLambda6$app_release() {
        return f30lambda6;
    }

    /* JADX INFO: renamed from: getLambda-7$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m90getLambda7$app_release() {
        return f31lambda7;
    }

    /* JADX INFO: renamed from: getLambda-8$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m91getLambda8$app_release() {
        return f32lambda8;
    }

    /* JADX INFO: renamed from: getLambda-9$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m92getLambda9$app_release() {
        return f33lambda9;
    }
}
