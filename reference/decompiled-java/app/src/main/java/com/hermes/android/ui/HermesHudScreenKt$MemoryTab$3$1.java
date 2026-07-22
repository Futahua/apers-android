package com.hermes.android.ui;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.ClickableKt;
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
import androidx.compose.material.icons.automirrored.filled.NotesKt;
import androidx.compose.material.icons.filled.ExpandLessKt;
import androidx.compose.material.icons.filled.ExpandMoreKt;
import androidx.compose.material3.IconKt;
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
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.data.HermesHudRepository;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: HermesHudScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
final class HermesHudScreenKt$MemoryTab$3$1 implements Function3<ColumnScope, Composer, Integer, Unit> {
    final /* synthetic */ String $cat;
    final /* synthetic */ String $catLabel;
    final /* synthetic */ Map<String, ImageVector> $categoryIcons;
    final /* synthetic */ List<HermesHudRepository.MemoryEntry> $entries;
    final /* synthetic */ MutableState<Boolean> $expanded$delegate;

    HermesHudScreenKt$MemoryTab$3$1(MutableState<Boolean> mutableState, Map<String, ImageVector> map, String str, String str2, List<HermesHudRepository.MemoryEntry> list) {
        this.$expanded$delegate = mutableState;
        this.$categoryIcons = map;
        this.$cat = str;
        this.$catLabel = str2;
        this.$entries = list;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        invoke((ColumnScope) obj, (Composer) obj2, ((Number) obj3).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(ColumnScope columnScope, Composer composer, int i) {
        int i2;
        Intrinsics.checkNotNullParameter(columnScope, "$this$HudCard");
        if ((i & 6) == 0) {
            i2 = i | (composer.changed(columnScope) ? 4 : 2);
        } else {
            i2 = i;
        }
        if ((i2 & 19) != 18 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-601676952, i2, -1, "com.hermes.android.ui.MemoryTab.<anonymous>.<anonymous> (HermesHudScreen.kt:425)");
            }
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null);
            composer.startReplaceGroup(845659338);
            final MutableState<Boolean> mutableState = this.$expanded$delegate;
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new Function0() { // from class: com.hermes.android.ui.HermesHudScreenKt$MemoryTab$3$1$$ExternalSyntheticLambda0
                    public final Object invoke() {
                        return HermesHudScreenKt$MemoryTab$3$1.invoke$lambda$1$lambda$0(mutableState);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            Modifier modifier = ClickableKt.clickable-XHw0xAI$default(modifierFillMaxWidth$default, false, (String) null, (Role) null, (Function0) objRememberedValue, 7, (Object) null);
            Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
            Map<String, ImageVector> map = this.$categoryIcons;
            String str = this.$cat;
            String str2 = this.$catLabel;
            List<HermesHudRepository.MemoryEntry> list = this.$entries;
            MutableState<Boolean> mutableState2 = this.$expanded$delegate;
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
            ImageVector notes = map.get(str);
            if (notes == null) {
                notes = NotesKt.getNotes(Icons.AutoMirrored.Filled.INSTANCE);
            }
            IconKt.Icon-ww6aTOc(notes, (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(18)), HermesHudScreenKt.Accent, composer, 3504, 0);
            SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), composer, 6);
            int i3 = i2;
            TextKt.Text--4IGK_g(str2 + " (" + list.size() + ")", RowScope.weight$default(rowScope, Modifier.Companion, 1.0f, false, 2, (Object) null), HermesHudScreenKt.TextPrimary, TextUnitKt.getSp(14), (FontStyle) null, FontWeight.Companion.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 200064, 0, 131024);
            IconKt.Icon-ww6aTOc(HermesHudScreenKt.MemoryTab$lambda$47$lambda$45(mutableState2) ? ExpandLessKt.getExpandLess(Icons.INSTANCE.getDefault()) : ExpandMoreKt.getExpandMore(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(20)), HermesHudScreenKt.TextSecondary, composer, 3504, 0);
            ComposerKt.sourceInformationMarkerEnd(composer);
            composer.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            boolean zMemoryTab$lambda$47$lambda$45 = HermesHudScreenKt.MemoryTab$lambda$47$lambda$45(this.$expanded$delegate);
            EnterTransition enterTransitionPlus = EnterExitTransitionKt.expandVertically$default((FiniteAnimationSpec) null, (Alignment.Vertical) null, false, (Function1) null, 15, (Object) null).plus(EnterExitTransitionKt.fadeIn$default((FiniteAnimationSpec) null, 0.0f, 3, (Object) null));
            ExitTransition exitTransitionPlus = EnterExitTransitionKt.shrinkVertically$default((FiniteAnimationSpec) null, (Alignment.Vertical) null, false, (Function1) null, 15, (Object) null).plus(EnterExitTransitionKt.fadeOut$default((FiniteAnimationSpec) null, 0.0f, 3, (Object) null));
            final List<HermesHudRepository.MemoryEntry> list2 = this.$entries;
            AnimatedVisibilityKt.AnimatedVisibility(columnScope, zMemoryTab$lambda$47$lambda$45, (Modifier) null, enterTransitionPlus, exitTransitionPlus, (String) null, ComposableLambdaKt.rememberComposableLambda(-1815355328, true, new Function3<AnimatedVisibilityScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.HermesHudScreenKt$MemoryTab$3$1.3
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke((AnimatedVisibilityScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer3, int i4) {
                    Intrinsics.checkNotNullParameter(animatedVisibilityScope, "$this$AnimatedVisibility");
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1815355328, i4, -1, "com.hermes.android.ui.MemoryTab.<anonymous>.<anonymous>.<anonymous> (HermesHudScreen.kt:449)");
                    }
                    Modifier modifier2 = PaddingKt.padding-qDBjuR0$default(Modifier.Companion, 0.0f, Dp.constructor-impl(8), 0.0f, 0.0f, 13, (Object) null);
                    List<HermesHudRepository.MemoryEntry> list3 = list2;
                    ComposerKt.sourceInformationMarkerStart(composer3, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer3, 0);
                    ComposerKt.sourceInformationMarkerStart(composer3, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifier2);
                    Function0 constructor2 = ComposeUiNode.Companion.getConstructor();
                    ComposerKt.sourceInformationMarkerStart(composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                    if (!(composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composer3.startReusableNode();
                    if (composer3.getInserting()) {
                        composer3.createNode(constructor2);
                    } else {
                        composer3.useNode();
                    }
                    Composer composer4 = Updater.constructor-impl(composer3);
                    Updater.set-impl(composer4, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                    Updater.set-impl(composer4, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                    Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                    if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                        composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                        composer4.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                    }
                    Updater.set-impl(composer4, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
                    ComposerKt.sourceInformationMarkerStart(composer3, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                    ColumnScope columnScope2 = ColumnScopeInstance.INSTANCE;
                    composer3.startReplaceGroup(1068756316);
                    Iterator<T> it = list3.iterator();
                    while (it.hasNext()) {
                        float f = 3;
                        TextKt.Text--4IGK_g("• " + StringsKt.take(((HermesHudRepository.MemoryEntry) it.next()).getText(), 200), PaddingKt.padding-qDBjuR0$default(Modifier.Companion, Dp.constructor-impl(4), Dp.constructor-impl(f), 0.0f, Dp.constructor-impl(f), 4, (Object) null), HermesHudScreenKt.TextSecondary, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(16), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 3504, 6, 130032);
                    }
                    composer3.endReplaceGroup();
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    composer3.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composer, 54), composer, (i3 & 14) | 1600512, 18);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
                return;
            }
            return;
        }
        composer.skipToGroupEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(MutableState mutableState) {
        HermesHudScreenKt.MemoryTab$lambda$47$lambda$46(mutableState, !HermesHudScreenKt.MemoryTab$lambda$47$lambda$45(mutableState));
        return Unit.INSTANCE;
    }
}
