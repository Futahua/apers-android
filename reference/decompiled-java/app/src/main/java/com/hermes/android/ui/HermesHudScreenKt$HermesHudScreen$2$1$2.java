package com.hermes.android.ui;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.TabKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import com.goterl.lazysodium.interfaces.Box;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HermesHudScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
final class HermesHudScreenKt$HermesHudScreen$2$1$2 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MutableIntState $selectedTab$delegate;
    final /* synthetic */ List<String> $tabs;

    HermesHudScreenKt$HermesHudScreen$2$1$2(List<String> list, MutableIntState mutableIntState) {
        this.$tabs = list;
        this.$selectedTab$delegate = mutableIntState;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-649219331, i, -1, "com.hermes.android.ui.HermesHudScreen.<anonymous>.<anonymous>.<anonymous> (HermesHudScreen.kt:139)");
            }
            List<String> list = this.$tabs;
            final MutableIntState mutableIntState = this.$selectedTab$delegate;
            final int i2 = 0;
            for (Object obj : list) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                final String str = (String) obj;
                boolean z = HermesHudScreenKt.HermesHudScreen$lambda$19(mutableIntState) == i2;
                composer.startReplaceGroup(-1130667988);
                boolean zChanged = composer.changed(i2);
                Object objRememberedValue = composer.rememberedValue();
                if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: com.hermes.android.ui.HermesHudScreenKt$HermesHudScreen$2$1$2$$ExternalSyntheticLambda0
                        public final Object invoke() {
                            return HermesHudScreenKt$HermesHudScreen$2$1$2.invoke$lambda$2$lambda$1$lambda$0(i2, mutableIntState);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue);
                }
                composer.endReplaceGroup();
                TabKt.Tab-bogVsAg(z, (Function0) objRememberedValue, PaddingKt.padding-VpY3zN4$default(Modifier.Companion, Dp.constructor-impl(2), 0.0f, 2, (Object) null), false, 0L, 0L, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(-57677372, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.HermesHudScreenKt$HermesHudScreen$2$1$2$1$2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3, Object obj4) {
                        invoke((ColumnScope) obj2, (Composer) obj3, ((Number) obj4).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope columnScope, Composer composer2, int i4) {
                        Intrinsics.checkNotNullParameter(columnScope, "$this$Tab");
                        if ((i4 & 17) != 16 || !composer2.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-57677372, i4, -1, "com.hermes.android.ui.HermesHudScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (HermesHudScreen.kt:145)");
                            }
                            float f = 8;
                            Modifier modifier = PaddingKt.padding-VpY3zN4(BackgroundKt.background-bw27NRU(PaddingKt.padding-VpY3zN4(Modifier.Companion, Dp.constructor-impl(4), Dp.constructor-impl(f)), HermesHudScreenKt.HermesHudScreen$lambda$19(mutableIntState) == i2 ? Color.copy-wmQWz5c$default(HermesHudScreenKt.Accent, 0.2f, 0.0f, 0.0f, 0.0f, 14, (Object) null) : Color.Companion.getTransparent-0d7_KjU(), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f))), Dp.constructor-impl(14), Dp.constructor-impl(f));
                            int i5 = i2;
                            String str2 = str;
                            MutableIntState mutableIntState2 = mutableIntState;
                            ComposerKt.sourceInformationMarkerStart(composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
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
                            Updater.set-impl(composer3, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                            Updater.set-impl(composer3, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                            Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                            if (composer3.getInserting() || !Intrinsics.areEqual(composer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                composer3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                                composer3.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                            }
                            Updater.set-impl(composer3, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                            ComposerKt.sourceInformationMarkerStart(composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                            BoxScope boxScope = BoxScopeInstance.INSTANCE;
                            TextKt.Text--4IGK_g(str2, (Modifier) null, HermesHudScreenKt.HermesHudScreen$lambda$19(mutableIntState2) == i5 ? HermesHudScreenKt.Accent : HermesHudScreenKt.TextSecondary, TextUnitKt.getSp(13), (FontStyle) null, HermesHudScreenKt.HermesHudScreen$lambda$19(mutableIntState2) == i5 ? FontWeight.Companion.getSemiBold() : FontWeight.Companion.getNormal(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3072, 0, 131026);
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
                }, composer, 54), composer, 12583296, 120);
                i2 = i3;
                mutableIntState = mutableIntState;
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
    public static final Unit invoke$lambda$2$lambda$1$lambda$0(int i, MutableIntState mutableIntState) {
        mutableIntState.setIntValue(i);
        return Unit.INSTANCE;
    }
}
