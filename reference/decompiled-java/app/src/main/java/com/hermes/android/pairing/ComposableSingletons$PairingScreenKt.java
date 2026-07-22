package com.hermes.android.pairing;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.filled.ArrowBackKt;
import androidx.compose.material.icons.filled.WifiKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
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
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import com.goterl.lazysodium.interfaces.Box;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PairingScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class ComposableSingletons$PairingScreenKt {
    public static final ComposableSingletons$PairingScreenKt INSTANCE = new ComposableSingletons$PairingScreenKt();

    /* JADX INFO: renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f0lambda1 = ComposableLambdaKt.composableLambdaInstance(-1871334644, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.pairing.ComposableSingletons$PairingScreenKt$lambda-1$1
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
                ComposerKt.traceEventStart(-1871334644, i, -1, "com.hermes.android.pairing.ComposableSingletons$PairingScreenKt.lambda-1.<anonymous> (PairingScreen.kt:49)");
            }
            TextKt.Text--4IGK_g("Web Pairing", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-2, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f1lambda2 = ComposableLambdaKt.composableLambdaInstance(588511851, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.pairing.ComposableSingletons$PairingScreenKt$lambda-2$1
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
                ComposerKt.traceEventStart(588511851, i, -1, "com.hermes.android.pairing.ComposableSingletons$PairingScreenKt.lambda-2.<anonymous> (PairingScreen.kt:52)");
            }
            IconKt.Icon-ww6aTOc(ArrowBackKt.getArrowBack(Icons.AutoMirrored.Filled.INSTANCE), "Back", (Modifier) null, 0L, composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-3, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f2lambda3 = ComposableLambdaKt.composableLambdaInstance(-2076293858, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.pairing.ComposableSingletons$PairingScreenKt$lambda-3$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$Button");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-2076293858, i, -1, "com.hermes.android.pairing.ComposableSingletons$PairingScreenKt.lambda-3.<anonymous> (PairingScreen.kt:104)");
                }
                IconKt.Icon-ww6aTOc(WifiKt.getWifi(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(18)), 0L, composer, 432, 8);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), composer, 6);
                TextKt.Text--4IGK_g("Start Pairing Server", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 6, 0, 131070);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-4, reason: not valid java name */
    public static Function3<ColumnScope, Composer, Integer, Unit> f3lambda4 = ComposableLambdaKt.composableLambdaInstance(490255136, false, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.hermes.android.pairing.ComposableSingletons$PairingScreenKt$lambda-4$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((ColumnScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(ColumnScope columnScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(columnScope, "$this$Card");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(490255136, i, -1, "com.hermes.android.pairing.ComposableSingletons$PairingScreenKt.lambda-4.<anonymous> (PairingScreen.kt:176)");
                }
                Modifier modifier = PaddingKt.padding-3ABfNKs(Modifier.Companion, Dp.constructor-impl(16));
                ComposerKt.sourceInformationMarkerStart(composer, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer, 0);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier);
                Function0 constructor = ComposeUiNode.Companion.getConstructor();
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
                Composer composer2 = Updater.constructor-impl(composer);
                Updater.set-impl(composer2, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.set-impl(composer2, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composer2.getInserting() || !Intrinsics.areEqual(composer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    composer2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    composer2.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.set-impl(composer2, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                ColumnScope columnScope2 = ColumnScopeInstance.INSTANCE;
                TextKt.Text--4IGK_g("How it works", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography(composer, MaterialTheme.$stable).getTitleSmall(), composer, 6, 0, 65534);
                Composer composer3 = composer;
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), composer3, 6);
                composer3.startReplaceGroup(-1301208149);
                int i2 = 1;
                int i3 = 2;
                Iterator it = CollectionsKt.listOf(new String[]{"1. Scan the QR code with your phone camera", "2. A setup page opens in your browser", "3. Select provider and paste your API key", "4. Tap Save — done!"}).iterator();
                while (it.hasNext()) {
                    TextKt.Text--4IGK_g((String) it.next(), PaddingKt.padding-VpY3zN4$default(Modifier.Companion, 0.0f, Dp.constructor-impl(i3), i2, (Object) null), MaterialTheme.INSTANCE.getColorScheme(composer3, MaterialTheme.$stable).getOnSurfaceVariant-0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography(composer3, MaterialTheme.$stable).getBodySmall(), composer, 48, 0, 65528);
                    composer3 = composer;
                    i3 = i3;
                    i2 = i2;
                }
                composer.endReplaceGroup();
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

    /* JADX INFO: renamed from: lambda-5, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f4lambda5 = ComposableLambdaKt.composableLambdaInstance(186680233, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.pairing.ComposableSingletons$PairingScreenKt$lambda-5$1
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
                ComposerKt.traceEventStart(186680233, i, -1, "com.hermes.android.pairing.ComposableSingletons$PairingScreenKt.lambda-5.<anonymous> (PairingScreen.kt:202)");
            }
            TextKt.Text--4IGK_g("Stop & Go Back", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: getLambda-1$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m27getLambda1$app_release() {
        return f0lambda1;
    }

    /* JADX INFO: renamed from: getLambda-2$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m28getLambda2$app_release() {
        return f1lambda2;
    }

    /* JADX INFO: renamed from: getLambda-3$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m29getLambda3$app_release() {
        return f2lambda3;
    }

    /* JADX INFO: renamed from: getLambda-4$app_release, reason: not valid java name */
    public final Function3<ColumnScope, Composer, Integer, Unit> m30getLambda4$app_release() {
        return f3lambda4;
    }

    /* JADX INFO: renamed from: getLambda-5$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m31getLambda5$app_release() {
        return f4lambda5;
    }
}
