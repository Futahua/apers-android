package com.hermes.android.ui.moa;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.filled.ArrowBackKt;
import androidx.compose.material.icons.filled.AddKt;
import androidx.compose.material.icons.filled.CloseKt;
import androidx.compose.material.icons.filled.DeleteKt;
import androidx.compose.material.icons.filled.GroupsKt;
import androidx.compose.material3.IconKt;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MoaCouncilScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class ComposableSingletons$MoaCouncilScreenKt {
    public static final ComposableSingletons$MoaCouncilScreenKt INSTANCE = new ComposableSingletons$MoaCouncilScreenKt();

    /* JADX INFO: renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f34lambda1 = ComposableLambdaKt.composableLambdaInstance(-806541792, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt$lambda-1$1
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
                ComposerKt.traceEventStart(-806541792, i, -1, "com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt.lambda-1.<anonymous> (MoaCouncilScreen.kt:97)");
            }
            IconKt.Icon-ww6aTOc(ArrowBackKt.getArrowBack(Icons.AutoMirrored.Filled.INSTANCE), (String) null, (Modifier) null, MoaCouncilScreenKt.TextPrimary, composer, 3120, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-2, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f41lambda2 = ComposableLambdaKt.composableLambdaInstance(1719208176, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt$lambda-2$1
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
                ComposerKt.traceEventStart(1719208176, i, -1, "com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt.lambda-2.<anonymous> (MoaCouncilScreen.kt:153)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_preset_delete, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-3, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f42lambda3 = ComposableLambdaKt.composableLambdaInstance(-5634062, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt$lambda-3$1
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
                ComposerKt.traceEventStart(-5634062, i, -1, "com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt.lambda-3.<anonymous> (MoaCouncilScreen.kt:158)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_cancel, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-4, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f43lambda4 = ComposableLambdaKt.composableLambdaInstance(-1053191065, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt$lambda-4$1
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
                ComposerKt.traceEventStart(-1053191065, i, -1, "com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt.lambda-4.<anonymous> (MoaCouncilScreen.kt:179)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.oauth_btn_done, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-5, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f44lambda5 = ComposableLambdaKt.composableLambdaInstance(750786478, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt$lambda-5$1
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
                ComposerKt.traceEventStart(750786478, i, -1, "com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt.lambda-5.<anonymous> (MoaCouncilScreen.kt:168)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_council_title, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.Companion.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 196608, 0, 131038);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-6, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f45lambda6 = ComposableLambdaKt.composableLambdaInstance(1140349181, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt$lambda-6$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1140349181, i, -1, "com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt.lambda-6.<anonymous> (MoaCouncilScreen.kt:198)");
                }
                Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                Modifier modifier = PaddingKt.padding-3ABfNKs(Modifier.Companion, Dp.constructor-impl(14));
                ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer, 48);
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
                Updater.set-impl(composer2, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.set-impl(composer2, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composer2.getInserting() || !Intrinsics.areEqual(composer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    composer2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    composer2.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.set-impl(composer2, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                RowScope rowScope = RowScopeInstance.INSTANCE;
                IconKt.Icon-ww6aTOc(GroupsKt.getGroups(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(22)), MoaCouncilScreenKt.TextSecondary, composer, 3504, 0);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(10)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_council_intro, composer, 0), (Modifier) null, MoaCouncilScreenKt.TextSecondary, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(18), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 6, 130034);
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

    /* JADX INFO: renamed from: lambda-7, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f46lambda7 = ComposableLambdaKt.composableLambdaInstance(-605012990, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt$lambda-7$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-605012990, i, -1, "com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt.lambda-7.<anonymous> (MoaCouncilScreen.kt:211)");
                }
                Modifier modifier = PaddingKt.padding-3ABfNKs(Modifier.Companion, Dp.constructor-impl(14));
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
                ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_council_empty_no_providers, composer, 0), (Modifier) null, MoaCouncilScreenKt.TextPrimary, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(18), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 6, 130034);
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

    /* JADX INFO: renamed from: lambda-8, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f47lambda8 = ComposableLambdaKt.composableLambdaInstance(889728365, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt$lambda-8$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$Button");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(889728365, i, -1, "com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt.lambda-8.<anonymous> (MoaCouncilScreen.kt:255)");
                }
                IconKt.Icon-ww6aTOc(AddKt.getAdd(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(18)), 0L, composer, 432, 8);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(6)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_create_council, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
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
    public static Function3<RowScope, Composer, Integer, Unit> f48lambda9 = ComposableLambdaKt.composableLambdaInstance(-2133578315, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt$lambda-9$1
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
                ComposerKt.traceEventStart(-2133578315, i, -1, "com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt.lambda-9.<anonymous> (MoaCouncilScreen.kt:308)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_preset_use, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3072, 0, 131062);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-10, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f35lambda10 = ComposableLambdaKt.composableLambdaInstance(-422789984, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt$lambda-10$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-422789984, i, -1, "com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt.lambda-10.<anonymous> (MoaCouncilScreen.kt:312)");
                }
                IconKt.Icon-ww6aTOc(DeleteKt.getDelete(Icons.INSTANCE.getDefault()), StringResources_androidKt.stringResource(R.string.moa_preset_delete, composer, 0), SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(18)), MoaCouncilScreenKt.TextMuted, composer, 3456, 0);
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
    public static Function2<Composer, Integer, Unit> f36lambda11 = ComposableLambdaKt.composableLambdaInstance(-225615382, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt$lambda-11$1
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
                ComposerKt.traceEventStart(-225615382, i, -1, "com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt.lambda-11.<anonymous> (MoaCouncilScreen.kt:335)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_editor_name_label, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-12, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f37lambda12 = ComposableLambdaKt.composableLambdaInstance(-1893851758, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt$lambda-12$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$OutlinedButton");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1893851758, i, -1, "com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt.lambda-12.<anonymous> (MoaCouncilScreen.kt:367)");
                }
                IconKt.Icon-ww6aTOc(AddKt.getAdd(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(16)), 0L, composer, 432, 8);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(6)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_editor_add_reference, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3072, 0, 131062);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-13, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f38lambda13 = ComposableLambdaKt.composableLambdaInstance(-390050457, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt$lambda-13$1
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
                ComposerKt.traceEventStart(-390050457, i, -1, "com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt.lambda-13.<anonymous> (MoaCouncilScreen.kt:405)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_editor_save_only, composer, 0), (Modifier) null, MoaCouncilScreenKt.TextSecondary, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 384, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-14, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f39lambda14 = ComposableLambdaKt.composableLambdaInstance(1051955470, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt$lambda-14$1
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
                ComposerKt.traceEventStart(1051955470, i, -1, "com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt.lambda-14.<anonymous> (MoaCouncilScreen.kt:463)");
            }
            IconKt.Icon-ww6aTOc(CloseKt.getClose(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(16)), MoaCouncilScreenKt.TextMuted, composer, 3504, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-15, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f40lambda15 = ComposableLambdaKt.composableLambdaInstance(25651472, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt$lambda-15$1
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
                ComposerKt.traceEventStart(25651472, i, -1, "com.hermes.android.ui.moa.ComposableSingletons$MoaCouncilScreenKt.lambda-15.<anonymous> (MoaCouncilScreen.kt:470)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_editor_model_label, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3072, 0, 131062);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: getLambda-1$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m106getLambda1$app_release() {
        return f34lambda1;
    }

    /* JADX INFO: renamed from: getLambda-10$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m107getLambda10$app_release() {
        return f35lambda10;
    }

    /* JADX INFO: renamed from: getLambda-11$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m108getLambda11$app_release() {
        return f36lambda11;
    }

    /* JADX INFO: renamed from: getLambda-12$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m109getLambda12$app_release() {
        return f37lambda12;
    }

    /* JADX INFO: renamed from: getLambda-13$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m110getLambda13$app_release() {
        return f38lambda13;
    }

    /* JADX INFO: renamed from: getLambda-14$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m111getLambda14$app_release() {
        return f39lambda14;
    }

    /* JADX INFO: renamed from: getLambda-15$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m112getLambda15$app_release() {
        return f40lambda15;
    }

    /* JADX INFO: renamed from: getLambda-2$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m113getLambda2$app_release() {
        return f41lambda2;
    }

    /* JADX INFO: renamed from: getLambda-3$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m114getLambda3$app_release() {
        return f42lambda3;
    }

    /* JADX INFO: renamed from: getLambda-4$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m115getLambda4$app_release() {
        return f43lambda4;
    }

    /* JADX INFO: renamed from: getLambda-5$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m116getLambda5$app_release() {
        return f44lambda5;
    }

    /* JADX INFO: renamed from: getLambda-6$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m117getLambda6$app_release() {
        return f45lambda6;
    }

    /* JADX INFO: renamed from: getLambda-7$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m118getLambda7$app_release() {
        return f46lambda7;
    }

    /* JADX INFO: renamed from: getLambda-8$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m119getLambda8$app_release() {
        return f47lambda8;
    }

    /* JADX INFO: renamed from: getLambda-9$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m120getLambda9$app_release() {
        return f48lambda9;
    }
}
