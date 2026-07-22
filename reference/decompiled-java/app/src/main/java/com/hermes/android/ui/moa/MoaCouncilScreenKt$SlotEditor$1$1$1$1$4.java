package com.hermes.android.ui.moa;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.MenuItemColors;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
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
import com.hermes.android.data.MoaSlot;
import com.hermes.android.data.SlotCandidate;
import com.hermes.android.ui.moa.MoaCouncilScreenKt;
import java.util.List;
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
final class MoaCouncilScreenKt$SlotEditor$1$1$1$1$4 implements Function3<ColumnScope, Composer, Integer, Unit> {
    final /* synthetic */ List<SlotCandidate> $candidates;
    final /* synthetic */ MutableState<Boolean> $expanded$delegate;
    final /* synthetic */ Function1<MoaSlot, Unit> $onChange;

    /* JADX WARN: Multi-variable type inference failed */
    MoaCouncilScreenKt$SlotEditor$1$1$1$1$4(List<SlotCandidate> list, Function1<? super MoaSlot, Unit> function1, MutableState<Boolean> mutableState) {
        this.$candidates = list;
        this.$onChange = function1;
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
                ComposerKt.traceEventStart(2000101179, i, -1, "com.hermes.android.ui.moa.SlotEditor.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MoaCouncilScreen.kt:440)");
            }
            List<SlotCandidate> list = this.$candidates;
            final Function1<MoaSlot, Unit> function1 = this.$onChange;
            final MutableState<Boolean> mutableState = this.$expanded$delegate;
            for (final SlotCandidate slotCandidate : list) {
                Function2 function2RememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-581178983, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$SlotEditor$1$1$1$1$4$1$1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((Composer) obj, ((Number) obj2).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer2, int i2) {
                        if ((i2 & 3) != 2 || !composer2.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-581178983, i2, -1, "com.hermes.android.ui.moa.SlotEditor.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MoaCouncilScreen.kt:443)");
                            }
                            SlotCandidate slotCandidate2 = slotCandidate;
                            ComposerKt.sourceInformationMarkerStart(composer2, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                            Modifier modifier = Modifier.Companion;
                            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer2, 0);
                            ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                            CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifier);
                            Function0 constructor = ComposeUiNode.Companion.getConstructor();
                            ComposerKt.sourceInformationMarkerStart(composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                            if (!(composer2.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            composer2.startReusableNode();
                            if (composer2.getInserting()) {
                                composer2.createNode(constructor);
                            } else {
                                composer2.useNode();
                            }
                            Composer composer3 = Updater.constructor-impl(composer2);
                            Updater.set-impl(composer3, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                            Updater.set-impl(composer3, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                            Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                            if (composer3.getInserting() || !Intrinsics.areEqual(composer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                composer3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                                composer3.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                            }
                            Updater.set-impl(composer3, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                            ComposerKt.sourceInformationMarkerStart(composer2, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                            RowScope rowScope = RowScopeInstance.INSTANCE;
                            TextKt.Text--4IGK_g(slotCandidate2.getDisplayName(), (Modifier) null, 0L, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3072, 0, 131062);
                            composer2.startReplaceGroup(-1755446952);
                            if (!slotCandidate2.getConfigured()) {
                                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(6)), composer2, 6);
                                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_editor_slot_unconfigured_badge, composer2, 0), (Modifier) null, MoaCouncilScreenKt.Amber, TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 131058);
                            }
                            composer2.endReplaceGroup();
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            composer2.endNode();
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer2.skipToGroupEnd();
                    }
                }, composer, 54);
                composer.startReplaceGroup(1941894861);
                boolean zChanged = composer.changed(function1) | composer.changed(slotCandidate);
                Object objRememberedValue = composer.rememberedValue();
                if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$SlotEditor$1$1$1$1$4$$ExternalSyntheticLambda0
                        public final Object invoke() {
                            return MoaCouncilScreenKt$SlotEditor$1$1$1$1$4.invoke$lambda$2$lambda$1$lambda$0(function1, slotCandidate, mutableState);
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
    public static final Unit invoke$lambda$2$lambda$1$lambda$0(Function1 function1, SlotCandidate slotCandidate, MutableState mutableState) {
        MoaCouncilScreenKt.C00421.invoke$lambda$11$lambda$8$lambda$2(mutableState, false);
        function1.invoke(new MoaSlot(slotCandidate.getProviderSlug(), slotCandidate.getDefaultModel()));
        return Unit.INSTANCE;
    }
}
