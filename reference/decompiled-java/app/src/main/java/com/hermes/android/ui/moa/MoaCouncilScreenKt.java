package com.hermes.android.ui.moa;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ArrowDropDownKt;
import androidx.compose.material3.AndroidAlertDialog_androidKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonElevation;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotMutationPolicy;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.window.DialogProperties;
import androidx.compose.ui.window.PopupProperties;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.goterl.lazysodium.interfaces.PwHash;
import com.hermes.android.R;
import com.hermes.android.data.MoaPreset;
import com.hermes.android.data.MoaSlot;
import com.hermes.android.data.SlotCandidate;
import com.hermes.android.ui.moa.MoaCouncilScreenKt;
import com.hermes.android.ui.moa.MoaCouncilViewModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MoaCouncilScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a+\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0011H\u0007¢\u0006\u0002\u0010\u0012\u001a%\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0003¢\u0006\u0002\u0010\u0016\u001a\u001e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002\u001a_\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u00182\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00112\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00112\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0011H\u0003¢\u0006\u0002\u0010'\u001a-\u0010(\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010)\u001a\u00020*H\u0003¢\u0006\u0002\u0010+\u001aG\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020.2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u000b002\u000e\u00101\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0011H\u0003¢\u0006\u0002\u00102\u001a,\u00103\u001a\u00020\u000b2\b\b\u0002\u00104\u001a\u00020\u00012\u0011\u00105\u001a\r\u0012\u0004\u0012\u00020\u000b0\u0011¢\u0006\u0002\b6H\u0003¢\u0006\u0004\b7\u00108\u001a\u001f\u00109\u001a\u00020\u000b2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u0001H\u0003¢\u0006\u0004\b=\u0010>\u001a\u001d\u0010?\u001a\u00020\u000b2\u0006\u0010@\u001a\u00020;2\u0006\u0010A\u001a\u00020;H\u0003¢\u0006\u0002\u0010B\u001a\r\u0010C\u001a\u00020DH\u0003¢\u0006\u0002\u0010E\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0005\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0006\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0007\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\b\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\t\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002¨\u0006F²\u0006\n\u0010\u0014\u001a\u00020\u0015X\u008a\u0084\u0002²\u0006\n\u0010G\u001a\u00020\u0018X\u008a\u008e\u0002"}, d2 = {"Glass", "Landroidx/compose/ui/graphics/Color;", "J", "GlassBorder", "TextPrimary", "TextSecondary", "TextMuted", "Amber", "Green", "Red", "MoaCouncilScreen", BuildConfig.FLAVOR, "viewModel", "Lcom/hermes/android/ui/moa/MoaCouncilViewModel;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "onBack", "Lkotlin/Function0;", "(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "ListContent", "state", "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;", "(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;Landroidx/compose/runtime/Composer;I)V", "hasUnconfiguredSlot", BuildConfig.FLAVOR, "p", "Lcom/hermes/android/data/MoaPreset;", "candidates", BuildConfig.FLAVOR, "Lcom/hermes/android/data/SlotCandidate;", "PresetCard", "preset", "isInUse", "isDefault", "hasUnconfigured", "enabled", "onClick", "onUse", "onDelete", "(Lcom/hermes/android/data/MoaPreset;ZZZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "EditorContent", "editor", "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;", "(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Landroidx/compose/runtime/Composer;I)V", "SlotEditor", "slot", "Lcom/hermes/android/data/MoaSlot;", "onChange", "Lkotlin/Function1;", "onRemove", "(Lcom/hermes/android/data/MoaSlot;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "GlassCard", "border", "content", "Landroidx/compose/runtime/Composable;", "GlassCard-3J-VO9M", "(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "Badge", "text", BuildConfig.FLAVOR, "color", "Badge-RPmYEkk", "(Ljava/lang/String;JLandroidx/compose/runtime/Composer;I)V", "SectionHeader", "title", "hint", "(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V", "fieldColors", "Landroidx/compose/material3/TextFieldColors;", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;", "app_release", "expanded"}, k = 2, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class MoaCouncilScreenKt {
    private static final long Glass = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.12f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
    private static final long GlassBorder = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.22f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
    private static final long TextPrimary = Color.Companion.getWhite-0d7_KjU();
    private static final long TextSecondary = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.7f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
    private static final long TextMuted = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.5f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
    private static final long Amber = ColorKt.Color(4294286859L);
    private static final long Green = ColorKt.Color(4280468830L);
    private static final long Red = ColorKt.Color(4294747557L);

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Badge_RPmYEkk$lambda$54(String str, long j, int i, Composer composer, int i2) {
        m126BadgeRPmYEkk(str, j, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EditorContent$lambda$50(MoaCouncilViewModel moaCouncilViewModel, CoroutineScope coroutineScope, MoaCouncilViewModel.UiState uiState, MoaCouncilViewModel.EditorState editorState, int i, Composer composer, int i2) {
        EditorContent(moaCouncilViewModel, coroutineScope, uiState, editorState, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit GlassCard_3J_VO9M$lambda$53(long j, Function2 function2, int i, int i2, Composer composer, int i3) {
        m127GlassCard3JVO9M(j, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ListContent$lambda$25(MoaCouncilViewModel moaCouncilViewModel, CoroutineScope coroutineScope, MoaCouncilViewModel.UiState uiState, int i, Composer composer, int i2) {
        ListContent(moaCouncilViewModel, coroutineScope, uiState, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit MoaCouncilScreen$lambda$15(MoaCouncilViewModel moaCouncilViewModel, CoroutineScope coroutineScope, Function0 function0, int i, Composer composer, int i2) {
        MoaCouncilScreen(moaCouncilViewModel, coroutineScope, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit PresetCard$lambda$29(MoaPreset moaPreset, boolean z, boolean z2, boolean z3, boolean z4, Function0 function0, Function0 function02, Function0 function03, int i, Composer composer, int i2) {
        PresetCard(moaPreset, z, z2, z3, z4, function0, function02, function03, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SectionHeader$lambda$56(String str, String str2, int i, Composer composer, int i2) {
        SectionHeader(str, str2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SlotEditor$lambda$51(MoaSlot moaSlot, List list, Function1 function1, Function0 function0, int i, Composer composer, int i2) {
        SlotEditor(moaSlot, list, function1, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void MoaCouncilScreen(final MoaCouncilViewModel moaCouncilViewModel, final CoroutineScope coroutineScope, final Function0<Unit> function0, Composer composer, final int i) {
        int i2;
        int i3;
        String strStringResource;
        boolean z;
        final State state;
        int i4;
        Composer composer2;
        Composer composer3;
        State state2;
        Intrinsics.checkNotNullParameter(moaCouncilViewModel, "viewModel");
        Intrinsics.checkNotNullParameter(coroutineScope, "scope");
        Intrinsics.checkNotNullParameter(function0, "onBack");
        Composer composerStartRestartGroup = composer.startRestartGroup(1153557417);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(moaCouncilViewModel) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(coroutineScope) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(function0) ? 256 : 128;
        }
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1153557417, i2, -1, "com.hermes.android.ui.moa.MoaCouncilScreen (MoaCouncilScreen.kt:81)");
            }
            final State stateCollectAsState = SnapshotStateKt.collectAsState(moaCouncilViewModel.getState(), (CoroutineContext) null, composerStartRestartGroup, 0, 1);
            Unit unit = Unit.INSTANCE;
            composerStartRestartGroup.startReplaceGroup(-535868007);
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(moaCouncilViewModel) | composerStartRestartGroup.changedInstance(coroutineScope);
            MoaCouncilScreenKt$MoaCouncilScreen$1$1 moaCouncilScreenKt$MoaCouncilScreen$1$1RememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || moaCouncilScreenKt$MoaCouncilScreen$1$1RememberedValue == Composer.Companion.getEmpty()) {
                moaCouncilScreenKt$MoaCouncilScreen$1$1RememberedValue = new MoaCouncilScreenKt$MoaCouncilScreen$1$1(moaCouncilViewModel, coroutineScope, null);
                composerStartRestartGroup.updateRememberedValue(moaCouncilScreenKt$MoaCouncilScreen$1$1RememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            EffectsKt.LaunchedEffect(unit, (Function2) moaCouncilScreenKt$MoaCouncilScreen$1$1RememberedValue, composerStartRestartGroup, 6);
            Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, (Object) null);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composerStartRestartGroup, 0);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierFillMaxSize$default);
            Function0 constructor = ComposeUiNode.Companion.getConstructor();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composer4 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer4, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer4, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                composer4.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.set-impl(composer4, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -384784025, "C88@4444L9:Column.kt#2w3rfo");
            ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
            Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
            Modifier modifier = PaddingKt.padding-VpY3zN4(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(8), Dp.constructor-impl(10));
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composerStartRestartGroup, 48);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier);
            Function0 constructor2 = ComposeUiNode.Companion.getConstructor();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor2);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composer5 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer5, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer5, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer5.getInserting() || !Intrinsics.areEqual(composer5.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                composer5.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                composer5.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
            }
            Updater.set-impl(composer5, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -407840262, "C101@5126L9:Row.kt#2w3rfo");
            RowScope rowScope = RowScopeInstance.INSTANCE;
            composerStartRestartGroup.startReplaceGroup(2001407930);
            boolean zChanged = composerStartRestartGroup.changed(stateCollectAsState) | composerStartRestartGroup.changedInstance(moaCouncilViewModel) | ((i2 & 896) == 256);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda21
                    public final Object invoke() {
                        return MoaCouncilScreenKt.MoaCouncilScreen$lambda$8$lambda$5$lambda$3$lambda$2(moaCouncilViewModel, function0, stateCollectAsState);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            IconButtonKt.IconButton((Function0) objRememberedValue, (Modifier) null, false, (IconButtonColors) null, (MutableInteractionSource) null, ComposableSingletons$MoaCouncilScreenKt.INSTANCE.m106getLambda1$app_release(), composerStartRestartGroup, 196608, 30);
            MoaCouncilViewModel.EditorState editor = MoaCouncilScreen$lambda$0(stateCollectAsState).getEditor();
            composerStartRestartGroup.startReplaceGroup(2001416089);
            if (editor == null) {
                strStringResource = null;
                i3 = 0;
            } else if (editor.isNew()) {
                composerStartRestartGroup.startReplaceGroup(1134532167);
                i3 = 0;
                strStringResource = StringResources_androidKt.stringResource(R.string.moa_editor_title_new, composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                i3 = 0;
                composerStartRestartGroup.startReplaceGroup(1134534449);
                strStringResource = StringResources_androidKt.stringResource(R.string.moa_editor_title_edit, new Object[]{editor.getName()}, composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
            }
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(2001415701);
            if (strStringResource == null) {
                strStringResource = StringResources_androidKt.stringResource(R.string.moa_council_title, composerStartRestartGroup, i3);
            }
            composerStartRestartGroup.endReplaceGroup();
            int i5 = i3;
            TextKt.Text--4IGK_g(strStringResource, (Modifier) null, TextPrimary, TextUnitKt.getSp(19), (FontStyle) null, FontWeight.Companion.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composerStartRestartGroup, 200064, 0, 131026);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.endNode();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            Modifier modifier2 = PaddingKt.padding-VpY3zN4$default(ScrollKt.verticalScroll$default(SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, (Object) null), ScrollKt.rememberScrollState(i5, composerStartRestartGroup, i5, 1), false, (FlingBehavior) null, false, 14, (Object) null), Dp.constructor-impl(16), 0.0f, 2, (Object) null);
            Arrangement.Vertical vertical = Arrangement.INSTANCE.spacedBy-0680j_4(Dp.constructor-impl(12));
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(vertical, Alignment.Companion.getStart(), composerStartRestartGroup, 6);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i5);
            CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier2);
            Function0 constructor3 = ComposeUiNode.Companion.getConstructor();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor3);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composer6 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer6, measurePolicyColumnMeasurePolicy2, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer6, currentCompositionLocalMap3, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash3 = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer6.getInserting() || !Intrinsics.areEqual(composer6.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                composer6.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
                composer6.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
            }
            Updater.set-impl(composer6, modifierMaterializeModifier3, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -384784025, "C88@4444L9:Column.kt#2w3rfo");
            ColumnScope columnScope2 = ColumnScopeInstance.INSTANCE;
            MoaCouncilViewModel.EditorState editor2 = MoaCouncilScreen$lambda$0(stateCollectAsState).getEditor();
            if (MoaCouncilScreen$lambda$0(stateCollectAsState).getLoading()) {
                composerStartRestartGroup.startReplaceGroup(1915078328);
                Alignment.Vertical centerVertically2 = Alignment.Companion.getCenterVertically();
                Modifier modifier3 = PaddingKt.padding-qDBjuR0$default(Modifier.Companion, 0.0f, Dp.constructor-impl(24), 0.0f, 0.0f, 13, (Object) null);
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically2, composerStartRestartGroup, 48);
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash4 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                Function0 constructor4 = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor4);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composer7 = Updater.constructor-impl(composerStartRestartGroup);
                Updater.set-impl(composer7, measurePolicyRowMeasurePolicy2, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.set-impl(composer7, currentCompositionLocalMap4, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash4 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composer7.getInserting() || !Intrinsics.areEqual(composer7.rememberedValue(), Integer.valueOf(currentCompositeKeyHash4))) {
                    composer7.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash4));
                    composer7.apply(Integer.valueOf(currentCompositeKeyHash4), setCompositeKeyHash4);
                }
                Updater.set-impl(composer7, modifierMaterializeModifier4, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                RowScope rowScope2 = RowScopeInstance.INSTANCE;
                z = true;
                ProgressIndicatorKt.CircularProgressIndicator-LxG7B9w(SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(20)), 0L, Dp.constructor-impl(2), 0L, 0, composerStartRestartGroup, 390, 26);
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                composerStartRestartGroup.endNode();
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                composerStartRestartGroup.endReplaceGroup();
                state = stateCollectAsState;
                i4 = 6;
                composer2 = composerStartRestartGroup;
            } else {
                z = true;
                if (editor2 != null) {
                    composerStartRestartGroup.startReplaceGroup(2001448937);
                    state = stateCollectAsState;
                    i4 = 6;
                    composer2 = composerStartRestartGroup;
                    EditorContent(moaCouncilViewModel, coroutineScope, MoaCouncilScreen$lambda$0(stateCollectAsState), editor2, composerStartRestartGroup, i2 & 126);
                    composer2.endReplaceGroup();
                } else {
                    state = stateCollectAsState;
                    i4 = 6;
                    composer2 = composerStartRestartGroup;
                    composer2.startReplaceGroup(2001451199);
                    ListContent(moaCouncilViewModel, coroutineScope, MoaCouncilScreen$lambda$0(state), composer2, i2 & 126);
                    composer2.endReplaceGroup();
                }
            }
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(24)), composer2, i4);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            final String pendingDelete = MoaCouncilScreen$lambda$0(state).getPendingDelete();
            composer2.startReplaceGroup(-535807453);
            if (pendingDelete == null) {
                composer3 = composer2;
                state2 = state;
            } else {
                final boolean zAreEqual = Intrinsics.areEqual(pendingDelete, MoaCouncilScreen$lambda$0(state).getInUsePreset());
                composer2.startReplaceGroup(-2103938504);
                boolean zChangedInstance2 = composer2.changedInstance(moaCouncilViewModel);
                Object objRememberedValue2 = composer2.rememberedValue();
                if (zChangedInstance2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                    objRememberedValue2 = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda1
                        public final Object invoke() {
                            return MoaCouncilScreenKt.MoaCouncilScreen$lambda$11$lambda$10$lambda$9(moaCouncilViewModel);
                        }
                    };
                    composer2.updateRememberedValue(objRememberedValue2);
                }
                composer2.endReplaceGroup();
                Function2 function2RememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1881388019, z, new MoaCouncilScreenKt$MoaCouncilScreen$3$2(moaCouncilViewModel, coroutineScope), composer2, 54);
                Function2 function2RememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(156545781, z, new MoaCouncilScreenKt$MoaCouncilScreen$3$3(moaCouncilViewModel), composer2, 54);
                Function2 function2RememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(-1568296457, z, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$MoaCouncilScreen$3$4
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((Composer) obj, ((Number) obj2).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer8, int i6) {
                        if ((i6 & 3) == 2 && composer8.getSkipping()) {
                            composer8.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1568296457, i6, -1, "com.hermes.android.ui.moa.MoaCouncilScreen.<anonymous>.<anonymous> (MoaCouncilScreen.kt:137)");
                        }
                        TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_delete_confirm_title, new Object[]{pendingDelete}, composer8, 0), (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.Companion.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer8, 196608, 0, 131038);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, composer2, 54);
                Function2 function2RememberComposableLambda4 = ComposableLambdaKt.rememberComposableLambda(-283233928, z, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$MoaCouncilScreen$3$5
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((Composer) obj, ((Number) obj2).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer8, int i6) {
                        if ((i6 & 3) != 2 || !composer8.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-283233928, i6, -1, "com.hermes.android.ui.moa.MoaCouncilScreen.<anonymous>.<anonymous> (MoaCouncilScreen.kt:139)");
                            }
                            boolean z2 = zAreEqual;
                            State<MoaCouncilViewModel.UiState> state3 = state;
                            ComposerKt.sourceInformationMarkerStart(composer8, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                            Modifier modifier4 = Modifier.Companion;
                            MeasurePolicy measurePolicyColumnMeasurePolicy3 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer8, 0);
                            ComposerKt.sourceInformationMarkerStart(composer8, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                            int currentCompositeKeyHash5 = ComposablesKt.getCurrentCompositeKeyHash(composer8, 0);
                            CompositionLocalMap currentCompositionLocalMap5 = composer8.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composer8, modifier4);
                            Function0 constructor5 = ComposeUiNode.Companion.getConstructor();
                            ComposerKt.sourceInformationMarkerStart(composer8, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                            if (!(composer8.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            composer8.startReusableNode();
                            if (composer8.getInserting()) {
                                composer8.createNode(constructor5);
                            } else {
                                composer8.useNode();
                            }
                            Composer composer9 = Updater.constructor-impl(composer8);
                            Updater.set-impl(composer9, measurePolicyColumnMeasurePolicy3, ComposeUiNode.Companion.getSetMeasurePolicy());
                            Updater.set-impl(composer9, currentCompositionLocalMap5, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                            Function2 setCompositeKeyHash5 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                            if (composer9.getInserting() || !Intrinsics.areEqual(composer9.rememberedValue(), Integer.valueOf(currentCompositeKeyHash5))) {
                                composer9.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash5));
                                composer9.apply(Integer.valueOf(currentCompositeKeyHash5), setCompositeKeyHash5);
                            }
                            Updater.set-impl(composer9, modifierMaterializeModifier5, ComposeUiNode.Companion.getSetModifier());
                            ComposerKt.sourceInformationMarkerStart(composer8, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                            ColumnScope columnScope3 = ColumnScopeInstance.INSTANCE;
                            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_delete_confirm_msg, composer8, 0), (Modifier) null, 0L, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer8, 3072, 0, 131062);
                            composer8.startReplaceGroup(1134584603);
                            if (z2) {
                                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), composer8, 6);
                                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_delete_active_note, new Object[]{MoaCouncilScreenKt.MoaCouncilScreen$lambda$0(state3).getSection().getDefaultPreset()}, composer8, 0), (Modifier) null, ColorKt.Color(4290007817L), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer8, 3456, 0, 131058);
                            }
                            composer8.endReplaceGroup();
                            ComposerKt.sourceInformationMarkerEnd(composer8);
                            composer8.endNode();
                            ComposerKt.sourceInformationMarkerEnd(composer8);
                            ComposerKt.sourceInformationMarkerEnd(composer8);
                            ComposerKt.sourceInformationMarkerEnd(composer8);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer8.skipToGroupEnd();
                    }
                }, composer2, 54);
                composer3 = composer2;
                state2 = state;
                AndroidAlertDialog_androidKt.AlertDialog-Oix01E0((Function0) objRememberedValue2, function2RememberComposableLambda, (Modifier) null, function2RememberComposableLambda2, (Function2) null, function2RememberComposableLambda3, function2RememberComposableLambda4, (Shape) null, 0L, 0L, 0L, 0L, 0.0f, (DialogProperties) null, composer3, 1772592, 0, 16276);
                Unit unit2 = Unit.INSTANCE;
                Unit unit3 = Unit.INSTANCE;
            }
            composer3.endReplaceGroup();
            final String error = MoaCouncilScreen$lambda$0(state2).getError();
            if (error != null) {
                composer3.startReplaceGroup(-2103899848);
                boolean zChangedInstance3 = composer3.changedInstance(moaCouncilViewModel);
                Object objRememberedValue3 = composer3.rememberedValue();
                if (zChangedInstance3 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                    objRememberedValue3 = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda2
                        public final Object invoke() {
                            return MoaCouncilScreenKt.MoaCouncilScreen$lambda$14$lambda$13$lambda$12(moaCouncilViewModel);
                        }
                    };
                    composer3.updateRememberedValue(objRememberedValue3);
                }
                composer3.endReplaceGroup();
                AndroidAlertDialog_androidKt.AlertDialog-Oix01E0((Function0) objRememberedValue3, ComposableLambdaKt.rememberComposableLambda(182815402, z, new MoaCouncilScreenKt$MoaCouncilScreen$4$2(moaCouncilViewModel), composer3, 54), (Modifier) null, (Function2) null, (Function2) null, ComposableSingletons$MoaCouncilScreenKt.INSTANCE.m116getLambda5$app_release(), ComposableLambdaKt.rememberComposableLambda(-1254704401, z, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$MoaCouncilScreen$4$3
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((Composer) obj, ((Number) obj2).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer8, int i6) {
                        String strStringResource2;
                        if ((i6 & 3) != 2 || !composer8.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1254704401, i6, -1, "com.hermes.android.ui.moa.MoaCouncilScreen.<anonymous>.<anonymous> (MoaCouncilScreen.kt:170)");
                            }
                            composer8.startReplaceGroup(2001504855);
                            if (Intrinsics.areEqual(error, MoaCouncilViewModel.LAST_PRESET_SENTINEL)) {
                                strStringResource2 = StringResources_androidKt.stringResource(R.string.moa_delete_last_error, composer8, 0);
                            } else {
                                strStringResource2 = error;
                            }
                            composer8.endReplaceGroup();
                            TextKt.Text--4IGK_g(strStringResource2, (Modifier) null, 0L, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer8, 3072, 0, 131062);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer8.skipToGroupEnd();
                    }
                }, composer3, 54), (Shape) null, 0L, 0L, 0L, 0L, 0.0f, (DialogProperties) null, composer3, 1769520, 0, 16284);
                Unit unit4 = Unit.INSTANCE;
                Unit unit5 = Unit.INSTANCE;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer3 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda3
                public final Object invoke(Object obj, Object obj2) {
                    return MoaCouncilScreenKt.MoaCouncilScreen$lambda$15(moaCouncilViewModel, coroutineScope, function0, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit MoaCouncilScreen$lambda$8$lambda$5$lambda$3$lambda$2(MoaCouncilViewModel moaCouncilViewModel, Function0 function0, State state) {
        if (MoaCouncilScreen$lambda$0(state).getEditor() != null) {
            moaCouncilViewModel.closeEditor();
        } else {
            function0.invoke();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit MoaCouncilScreen$lambda$11$lambda$10$lambda$9(MoaCouncilViewModel moaCouncilViewModel) {
        moaCouncilViewModel.cancelDelete();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit MoaCouncilScreen$lambda$14$lambda$13$lambda$12(MoaCouncilViewModel moaCouncilViewModel) {
        moaCouncilViewModel.dismissError();
        return Unit.INSTANCE;
    }

    private static final void ListContent(final MoaCouncilViewModel moaCouncilViewModel, final CoroutineScope coroutineScope, final MoaCouncilViewModel.UiState uiState, Composer composer, final int i) {
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(41054045);
        int i2 = (i & 6) == 0 ? (composerStartRestartGroup.changedInstance(moaCouncilViewModel) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(coroutineScope) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(uiState) ? 256 : 128;
        }
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(41054045, i2, -1, "com.hermes.android.ui.moa.ListContent (MoaCouncilScreen.kt:195)");
            }
            m127GlassCard3JVO9M(0L, ComposableSingletons$MoaCouncilScreenKt.INSTANCE.m117getLambda6$app_release(), composerStartRestartGroup, 48, 1);
            composerStartRestartGroup.startReplaceGroup(1270806138);
            if (!uiState.getHasAnyProvider()) {
                m127GlassCard3JVO9M(Color.copy-wmQWz5c$default(Amber, 0.5f, 0.0f, 0.0f, 0.0f, 14, (Object) null), ComposableSingletons$MoaCouncilScreenKt.INSTANCE.m118getLambda7$app_release(), composerStartRestartGroup, 54, 0);
            }
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(1270819175);
            int i3 = 1;
            if (uiState.getStaleInUse()) {
                m127GlassCard3JVO9M(Color.copy-wmQWz5c$default(Amber, 0.5f, 0.0f, 0.0f, 0.0f, 14, (Object) null), ComposableLambdaKt.rememberComposableLambda(-735853205, true, new AnonymousClass1(uiState, moaCouncilViewModel, coroutineScope), composerStartRestartGroup, 54), composerStartRestartGroup, 54, 0);
            }
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(1270840746);
            for (Iterator it = uiState.getSection().getPresets().iterator(); it.hasNext(); it = it) {
                final MoaPreset moaPreset = (MoaPreset) it.next();
                boolean zAreEqual = Intrinsics.areEqual(moaPreset.getName(), uiState.getInUsePreset());
                boolean zAreEqual2 = Intrinsics.areEqual(moaPreset.getName(), uiState.getSection().getDefaultPreset());
                boolean zHasUnconfiguredSlot = hasUnconfiguredSlot(moaPreset, uiState.getCandidates());
                boolean hasAnyProvider = uiState.getHasAnyProvider();
                composerStartRestartGroup.startReplaceGroup(119091913);
                boolean zChangedInstance = composerStartRestartGroup.changedInstance(moaCouncilViewModel) | composerStartRestartGroup.changedInstance(moaPreset);
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda7
                        public final Object invoke() {
                            return MoaCouncilScreenKt.ListContent$lambda$22$lambda$17$lambda$16(moaCouncilViewModel, moaPreset);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Function0 function0 = (Function0) objRememberedValue;
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.startReplaceGroup(119093585);
                boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(moaCouncilViewModel) | composerStartRestartGroup.changedInstance(coroutineScope) | composerStartRestartGroup.changedInstance(moaPreset);
                Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                    objRememberedValue2 = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda8
                        public final Object invoke() {
                            return MoaCouncilScreenKt.ListContent$lambda$22$lambda$19$lambda$18(moaCouncilViewModel, coroutineScope, moaPreset);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                Function0 function02 = (Function0) objRememberedValue2;
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.startReplaceGroup(119095598);
                boolean zChangedInstance3 = composerStartRestartGroup.changedInstance(moaCouncilViewModel) | composerStartRestartGroup.changedInstance(moaPreset);
                Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance3 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                    objRememberedValue3 = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda9
                        public final Object invoke() {
                            return MoaCouncilScreenKt.ListContent$lambda$22$lambda$21$lambda$20(moaCouncilViewModel, moaPreset);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                composerStartRestartGroup.endReplaceGroup();
                PresetCard(moaPreset, zAreEqual, zAreEqual2, zHasUnconfiguredSlot, hasAnyProvider, function0, function02, (Function0) objRememberedValue3, composerStartRestartGroup, MoaPreset.$stable);
                i3 = i3;
            }
            composerStartRestartGroup.endReplaceGroup();
            boolean hasAnyProvider2 = uiState.getHasAnyProvider();
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, i3, (Object) null);
            composerStartRestartGroup.startReplaceGroup(1270856614);
            boolean zChangedInstance4 = composerStartRestartGroup.changedInstance(moaCouncilViewModel);
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance4 || objRememberedValue4 == Composer.Companion.getEmpty()) {
                objRememberedValue4 = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda10
                    public final Object invoke() {
                        return MoaCouncilScreenKt.ListContent$lambda$24$lambda$23(moaCouncilViewModel);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            composerStartRestartGroup.endReplaceGroup();
            composer2 = composerStartRestartGroup;
            ButtonKt.Button((Function0) objRememberedValue4, modifierFillMaxWidth$default, hasAnyProvider2, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$MoaCouncilScreenKt.INSTANCE.m119getLambda8$app_release(), composerStartRestartGroup, 805306416, 504);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda12
                public final Object invoke(Object obj, Object obj2) {
                    return MoaCouncilScreenKt.ListContent$lambda$25(moaCouncilViewModel, coroutineScope, uiState, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.ui.moa.MoaCouncilScreenKt$ListContent$1, reason: invalid class name */
    /* JADX INFO: compiled from: MoaCouncilScreen.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    static final class AnonymousClass1 implements Function2<Composer, Integer, Unit> {
        final /* synthetic */ CoroutineScope $scope;
        final /* synthetic */ MoaCouncilViewModel.UiState $state;
        final /* synthetic */ MoaCouncilViewModel $viewModel;

        AnonymousClass1(MoaCouncilViewModel.UiState uiState, MoaCouncilViewModel moaCouncilViewModel, CoroutineScope coroutineScope) {
            this.$state = uiState;
            this.$viewModel = moaCouncilViewModel;
            this.$scope = coroutineScope;
        }

        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-735853205, i, -1, "com.hermes.android.ui.moa.ListContent.<anonymous> (MoaCouncilScreen.kt:223)");
                }
                Modifier modifier = PaddingKt.padding-3ABfNKs(Modifier.Companion, Dp.constructor-impl(14));
                final MoaCouncilViewModel.UiState uiState = this.$state;
                final MoaCouncilViewModel moaCouncilViewModel = this.$viewModel;
                final CoroutineScope coroutineScope = this.$scope;
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
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_stale_in_use_banner, new Object[]{uiState.getInUsePreset()}, composer, 0), (Modifier) null, MoaCouncilScreenKt.TextPrimary, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(18), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 6, 130034);
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), composer, 6);
                composer.startReplaceGroup(1243051628);
                boolean zChangedInstance = composer.changedInstance(moaCouncilViewModel) | composer.changedInstance(coroutineScope);
                Object objRememberedValue = composer.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$ListContent$1$$ExternalSyntheticLambda0
                        public final Object invoke() {
                            return MoaCouncilScreenKt.AnonymousClass1.invoke$lambda$2$lambda$1$lambda$0(moaCouncilViewModel, coroutineScope);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue);
                }
                composer.endReplaceGroup();
                ButtonKt.OutlinedButton((Function0) objRememberedValue, (Modifier) null, false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(1752575315, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$ListContent$1$1$2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                        invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(RowScope rowScope, Composer composer3, int i2) {
                        Intrinsics.checkNotNullParameter(rowScope, "$this$OutlinedButton");
                        if ((i2 & 17) == 16 && composer3.getSkipping()) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1752575315, i2, -1, "com.hermes.android.ui.moa.ListContent.<anonymous>.<anonymous>.<anonymous> (MoaCouncilScreen.kt:230)");
                        }
                        TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_stale_in_use_fix, new Object[]{uiState.getSection().getDefaultPreset()}, composer3, 0), (Modifier) null, 0L, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 3072, 0, 131062);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, composer, 54), composer, 805306368, 510);
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

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$2$lambda$1$lambda$0(MoaCouncilViewModel moaCouncilViewModel, CoroutineScope coroutineScope) {
            moaCouncilViewModel.fixStaleInUse(coroutineScope);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ListContent$lambda$22$lambda$17$lambda$16(MoaCouncilViewModel moaCouncilViewModel, MoaPreset moaPreset) {
        moaCouncilViewModel.openEdit(moaPreset.getName());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ListContent$lambda$22$lambda$19$lambda$18(MoaCouncilViewModel moaCouncilViewModel, CoroutineScope coroutineScope, MoaPreset moaPreset) {
        moaCouncilViewModel.usePreset(coroutineScope, moaPreset.getName());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ListContent$lambda$22$lambda$21$lambda$20(MoaCouncilViewModel moaCouncilViewModel, MoaPreset moaPreset) {
        moaCouncilViewModel.requestDelete(moaPreset.getName());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ListContent$lambda$24$lambda$23(MoaCouncilViewModel moaCouncilViewModel) {
        moaCouncilViewModel.openCreate();
        return Unit.INSTANCE;
    }

    private static final boolean hasUnconfiguredSlot(MoaPreset moaPreset, List<SlotCandidate> list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((SlotCandidate) obj).getConfigured()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(((SlotCandidate) it.next()).getProviderSlug());
        }
        Set set = CollectionsKt.toSet(arrayList3);
        List listPlus = CollectionsKt.plus(moaPreset.getReferenceModels(), moaPreset.getAggregator());
        if ((listPlus instanceof Collection) && listPlus.isEmpty()) {
            return false;
        }
        Iterator it2 = listPlus.iterator();
        while (it2.hasNext()) {
            if (!set.contains(((MoaSlot) it2.next()).getProvider())) {
                return true;
            }
        }
        return false;
    }

    private static final void PresetCard(final MoaPreset moaPreset, final boolean z, final boolean z2, final boolean z3, final boolean z4, final Function0<Unit> function0, final Function0<Unit> function02, final Function0<Unit> function03, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-321435374);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(moaPreset) : composerStartRestartGroup.changedInstance(moaPreset) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changed(z2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(z3) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changed(z4) ? 16384 : PwHash.ARGON2ID_MEMLIMIT_MIN;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(function0) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(function02) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(function03) ? 8388608 : 4194304;
        }
        if ((4793491 & i2) != 4793490 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-321435374, i2, -1, "com.hermes.android.ui.moa.PresetCard (MoaCouncilScreen.kt:276)");
            }
            m127GlassCard3JVO9M(0L, ComposableLambdaKt.rememberComposableLambda(-305888590, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt.PresetCard.1
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i3) {
                    int i4;
                    int i5;
                    if ((i3 & 3) != 2 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-305888590, i3, -1, "com.hermes.android.ui.moa.PresetCard.<anonymous> (MoaCouncilScreen.kt:278)");
                        }
                        Modifier modifier = PaddingKt.padding-3ABfNKs(ClickableKt.clickable-XHw0xAI$default(Modifier.Companion, false, (String) null, (Role) null, function0, 7, (Object) null), Dp.constructor-impl(14));
                        MoaPreset moaPreset2 = moaPreset;
                        boolean z5 = z3;
                        boolean z6 = z;
                        boolean z7 = z2;
                        Function0<Unit> function04 = function02;
                        boolean z8 = z4;
                        Function0<Unit> function05 = function03;
                        ComposerKt.sourceInformationMarkerStart(composer2, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer2, 0);
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
                        Updater.set-impl(composer3, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                        Updater.set-impl(composer3, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                        Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                        if (composer3.getInserting() || !Intrinsics.areEqual(composer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            composer3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                            composer3.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                        }
                        Updater.set-impl(composer3, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                        ComposerKt.sourceInformationMarkerStart(composer2, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                        ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
                        Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                        ComposerKt.sourceInformationMarkerStart(composer2, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                        Modifier modifier2 = Modifier.Companion;
                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer2, 48);
                        ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap2 = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer2, modifier2);
                        Function0 constructor2 = ComposeUiNode.Companion.getConstructor();
                        ComposerKt.sourceInformationMarkerStart(composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!(composer2.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composer2.startReusableNode();
                        if (composer2.getInserting()) {
                            composer2.createNode(constructor2);
                        } else {
                            composer2.useNode();
                        }
                        Composer composer4 = Updater.constructor-impl(composer2);
                        Updater.set-impl(composer4, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                        Updater.set-impl(composer4, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                        Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                        if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                            composer4.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                        }
                        Updater.set-impl(composer4, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
                        ComposerKt.sourceInformationMarkerStart(composer2, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                        RowScope rowScope = RowScopeInstance.INSTANCE;
                        TextKt.Text--4IGK_g(moaPreset2.getName(), (Modifier) null, MoaCouncilScreenKt.TextPrimary, TextUnitKt.getSp(16), (FontStyle) null, FontWeight.Companion.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 200064, 0, 131026);
                        composer2.startReplaceGroup(1741649284);
                        if (z5) {
                            SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(6)), composer2, 6);
                            TextKt.Text--4IGK_g("⚠", (Modifier) null, 0L, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3078, 0, 131062);
                        }
                        composer2.endReplaceGroup();
                        SpacerKt.Spacer(RowScope.weight$default(rowScope, Modifier.Companion, 1.0f, false, 2, (Object) null), composer2, 0);
                        composer2.startReplaceGroup(1741655558);
                        if (z6) {
                            i4 = 48;
                            MoaCouncilScreenKt.m126BadgeRPmYEkk(StringResources_androidKt.stringResource(R.string.moa_preset_in_use_badge, composer2, 0), MoaCouncilScreenKt.Green, composer2, 48);
                        } else {
                            i4 = 48;
                        }
                        composer2.endReplaceGroup();
                        composer2.startReplaceGroup(1741658598);
                        if (z7) {
                            i5 = 6;
                            SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(4)), composer2, 6);
                            MoaCouncilScreenKt.m126BadgeRPmYEkk(StringResources_androidKt.stringResource(R.string.moa_preset_default_badge, composer2, 0), MoaCouncilScreenKt.TextMuted, composer2, i4);
                        } else {
                            i5 = 6;
                        }
                        composer2.endReplaceGroup();
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        composer2.endNode();
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(4)), composer2, i5);
                        TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_preset_refs_summary, new Object[]{Integer.valueOf(moaPreset2.getReferenceModels().size()), moaPreset2.getAggregator().getProvider() + "/" + moaPreset2.getAggregator().getModel()}, composer2, 0), (Modifier) null, MoaCouncilScreenKt.TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 131058);
                        float f = 8;
                        SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f)), composer2, 6);
                        ComposerKt.sourceInformationMarkerStart(composer2, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                        Modifier modifier3 = Modifier.Companion;
                        MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer2, 0);
                        ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap3 = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer2, modifier3);
                        Function0 constructor3 = ComposeUiNode.Companion.getConstructor();
                        ComposerKt.sourceInformationMarkerStart(composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!(composer2.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composer2.startReusableNode();
                        if (composer2.getInserting()) {
                            composer2.createNode(constructor3);
                        } else {
                            composer2.useNode();
                        }
                        Composer composer5 = Updater.constructor-impl(composer2);
                        Updater.set-impl(composer5, measurePolicyRowMeasurePolicy2, ComposeUiNode.Companion.getSetMeasurePolicy());
                        Updater.set-impl(composer5, currentCompositionLocalMap3, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                        Function2 setCompositeKeyHash3 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                        if (composer5.getInserting() || !Intrinsics.areEqual(composer5.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                            composer5.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
                            composer5.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
                        }
                        Updater.set-impl(composer5, modifierMaterializeModifier3, ComposeUiNode.Companion.getSetModifier());
                        ComposerKt.sourceInformationMarkerStart(composer2, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                        RowScope rowScope2 = RowScopeInstance.INSTANCE;
                        ButtonKt.OutlinedButton(function04, (Modifier) null, z8 && !z6, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$MoaCouncilScreenKt.INSTANCE.m120getLambda9$app_release(), composer2, 805306368, 506);
                        SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f)), composer2, 6);
                        IconButtonKt.IconButton(function05, (Modifier) null, false, (IconButtonColors) null, (MutableInteractionSource) null, ComposableSingletons$MoaCouncilScreenKt.INSTANCE.m107getLambda10$app_release(), composer2, 196608, 30);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        composer2.endNode();
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
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
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 48, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda0
                public final Object invoke(Object obj, Object obj2) {
                    return MoaCouncilScreenKt.PresetCard$lambda$29(moaPreset, z, z2, z3, z4, function0, function02, function03, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x04d1  */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v18 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final void EditorContent(final MoaCouncilViewModel moaCouncilViewModel, final CoroutineScope coroutineScope, final MoaCouncilViewModel.UiState uiState, final MoaCouncilViewModel.EditorState editorState, Composer composer, final int i) {
        Function2 function2RememberComposableLambda;
        int i2;
        ?? r0;
        boolean zChangedInstance;
        Object objRememberedValue;
        boolean zChangedInstance2;
        Object objRememberedValue2;
        boolean zChangedInstance3;
        Object objRememberedValue3;
        boolean zChangedInstance4;
        Object objRememberedValue4;
        Function0 function0;
        Composer composerStartRestartGroup = composer.startRestartGroup(-4773820);
        int i3 = (i & 6) == 0 ? (composerStartRestartGroup.changedInstance(moaCouncilViewModel) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(coroutineScope) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(uiState) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(editorState) ? 2048 : 1024;
        }
        if ((i3 & 1171) != 1170 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-4773820, i3, -1, "com.hermes.android.ui.moa.EditorContent (MoaCouncilScreen.kt:330)");
            }
            String name = editorState.getName();
            boolean zIsNew = editorState.isNew();
            boolean z = editorState.getNameError() != null;
            Integer nameError = editorState.getNameError();
            composerStartRestartGroup.startReplaceGroup(-2073270834);
            if (nameError == null) {
                function2RememberComposableLambda = null;
            } else {
                final int iIntValue = nameError.intValue();
                function2RememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1873325933, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$EditorContent$1$1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((Composer) obj, ((Number) obj2).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer2, int i4) {
                        if ((i4 & 3) == 2 && composer2.getSkipping()) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1873325933, i4, -1, "com.hermes.android.ui.moa.EditorContent.<anonymous>.<anonymous> (MoaCouncilScreen.kt:339)");
                        }
                        TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(iIntValue, composer2, 0), (Modifier) null, MoaCouncilScreenKt.Red, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 384, 0, 131066);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, composerStartRestartGroup, 54);
            }
            composerStartRestartGroup.endReplaceGroup();
            TextFieldColors textFieldColorsFieldColors = fieldColors(composerStartRestartGroup, 0);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null);
            composerStartRestartGroup.startReplaceGroup(-2073278948);
            boolean zChangedInstance5 = composerStartRestartGroup.changedInstance(moaCouncilViewModel);
            Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance5 || objRememberedValue5 == Composer.Companion.getEmpty()) {
                objRememberedValue5 = new Function1() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda11
                    public final Object invoke(Object obj) {
                        return MoaCouncilScreenKt.EditorContent$lambda$32$lambda$31(moaCouncilViewModel, (String) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            composerStartRestartGroup.endReplaceGroup();
            OutlinedTextFieldKt.OutlinedTextField(name, (Function1) objRememberedValue5, modifierFillMaxWidth$default, zIsNew, false, (TextStyle) null, ComposableSingletons$MoaCouncilScreenKt.INSTANCE.m108getLambda11$app_release(), (Function2) null, (Function2) null, (Function2) null, (Function2) null, (Function2) null, function2RememberComposableLambda, z, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, textFieldColorsFieldColors, composerStartRestartGroup, 1573248, 12582912, 0, 4050864);
            SectionHeader(StringResources_androidKt.stringResource(R.string.moa_editor_reference_section, composerStartRestartGroup, 0), StringResources_androidKt.stringResource(R.string.moa_editor_reference_hint, composerStartRestartGroup, 0), composerStartRestartGroup, 0);
            composerStartRestartGroup.startReplaceGroup(-2073260119);
            final int i4 = 0;
            for (Object obj : editorState.getReferences()) {
                int i5 = i4 + 1;
                if (i4 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                MoaSlot moaSlot = (MoaSlot) obj;
                List<SlotCandidate> candidates = uiState.getCandidates();
                composerStartRestartGroup.startReplaceGroup(366214755);
                boolean zChangedInstance6 = composerStartRestartGroup.changedInstance(moaCouncilViewModel) | composerStartRestartGroup.changed(i4);
                Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance6 || objRememberedValue6 == Composer.Companion.getEmpty()) {
                    objRememberedValue6 = new Function1() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda14
                        public final Object invoke(Object obj2) {
                            return MoaCouncilScreenKt.EditorContent$lambda$37$lambda$34$lambda$33(moaCouncilViewModel, i4, (MoaSlot) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                Function1 function1 = (Function1) objRememberedValue6;
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.startReplaceGroup(-2073253843);
                if (editorState.getReferences().size() > 1) {
                    composerStartRestartGroup.startReplaceGroup(366218402);
                    boolean zChangedInstance7 = composerStartRestartGroup.changedInstance(moaCouncilViewModel) | composerStartRestartGroup.changed(i4);
                    Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance7 || objRememberedValue7 == Composer.Companion.getEmpty()) {
                        objRememberedValue7 = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda15
                            public final Object invoke() {
                                return MoaCouncilScreenKt.EditorContent$lambda$37$lambda$36$lambda$35(moaCouncilViewModel, i4);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                    }
                    function0 = (Function0) objRememberedValue7;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    function0 = null;
                }
                composerStartRestartGroup.endReplaceGroup();
                SlotEditor(moaSlot, candidates, function1, function0, composerStartRestartGroup, 0);
                i4 = i5;
            }
            composerStartRestartGroup.endReplaceGroup();
            Integer refsError = editorState.getRefsError();
            composerStartRestartGroup.startReplaceGroup(-2073249028);
            if (refsError == null) {
                i2 = 0;
            } else {
                i2 = 0;
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(refsError.intValue(), composerStartRestartGroup, 0), (Modifier) null, Red, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composerStartRestartGroup, 3456, 0, 131058);
                Unit unit = Unit.INSTANCE;
                Unit unit2 = Unit.INSTANCE;
            }
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-2073245708);
            List<MoaSlot> references = editorState.getReferences();
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : references) {
                if (!StringsKt.isBlank(((MoaSlot) obj2).getProvider())) {
                    arrayList.add(obj2);
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj3 : arrayList) {
                MoaSlot moaSlot2 = (MoaSlot) obj3;
                Pair pair = TuplesKt.to(moaSlot2.getProvider(), moaSlot2.getModel());
                Object obj4 = linkedHashMap.get(pair);
                if (obj4 == null) {
                    obj4 = (List) new ArrayList();
                    linkedHashMap.put(pair, obj4);
                }
                ((List) obj4).add(obj3);
            }
            if (!linkedHashMap.isEmpty()) {
                Iterator it = linkedHashMap.entrySet().iterator();
                while (it.hasNext()) {
                    if (((List) ((Map.Entry) it.next()).getValue()).size() > 1) {
                        r0 = 1;
                        TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_editor_duplicate_warning, composerStartRestartGroup, i2), (Modifier) null, Amber, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composerStartRestartGroup, 3456, 0, 131058);
                        break;
                    }
                }
                r0 = 1;
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.startReplaceGroup(-2073237057);
                zChangedInstance = composerStartRestartGroup.changedInstance(moaCouncilViewModel);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (!zChangedInstance) {
                    objRememberedValue = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda16
                        public final Object invoke() {
                            return MoaCouncilScreenKt.EditorContent$lambda$43$lambda$42(moaCouncilViewModel);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    composerStartRestartGroup.endReplaceGroup();
                    ButtonKt.OutlinedButton((Function0) objRememberedValue, SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, (int) r0, (Object) null), false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$MoaCouncilScreenKt.INSTANCE.m109getLambda12$app_release(), composerStartRestartGroup, 805306416, 508);
                    SectionHeader(StringResources_androidKt.stringResource(R.string.moa_editor_aggregator_section, composerStartRestartGroup, 0), StringResources_androidKt.stringResource(R.string.moa_editor_aggregator_hint, composerStartRestartGroup, 0), composerStartRestartGroup, 0);
                    MoaSlot aggregator = editorState.getAggregator();
                    List<SlotCandidate> candidates2 = uiState.getCandidates();
                    composerStartRestartGroup.startReplaceGroup(-2073219422);
                    zChangedInstance2 = composerStartRestartGroup.changedInstance(moaCouncilViewModel);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (!zChangedInstance2) {
                        objRememberedValue2 = new Function1() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda17
                            public final Object invoke(Object obj5) {
                                return MoaCouncilScreenKt.EditorContent$lambda$45$lambda$44(moaCouncilViewModel, (MoaSlot) obj5);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        composerStartRestartGroup.endReplaceGroup();
                        SlotEditor(aggregator, candidates2, (Function1) objRememberedValue2, null, composerStartRestartGroup, 3072);
                        TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_editor_cost_hint, new Object[]{Integer.valueOf(editorState.getReferences().size() + r0), Integer.valueOf(editorState.getReferences().size())}, composerStartRestartGroup, 0), (Modifier) null, TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(16), 0, false, 0, 0, (Function1) null, (TextStyle) null, composerStartRestartGroup, 3456, 6, 130034);
                        composerStartRestartGroup.startReplaceGroup(-2073209057);
                        if (editorState.getOverwriteConfirmNeeded()) {
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        composerStartRestartGroup.startReplaceGroup(-2073202267);
                        zChangedInstance3 = composerStartRestartGroup.changedInstance(moaCouncilViewModel) | composerStartRestartGroup.changedInstance(coroutineScope);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (!zChangedInstance3) {
                            objRememberedValue3 = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda18
                                public final Object invoke() {
                                    return MoaCouncilScreenKt.EditorContent$lambda$47$lambda$46(moaCouncilViewModel, coroutineScope);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            composerStartRestartGroup.endReplaceGroup();
                            ButtonKt.Button((Function0) objRememberedValue3, SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, (int) r0, (Object) null), false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(2034260, (boolean) r0, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt.EditorContent.11
                                public /* bridge */ /* synthetic */ Object invoke(Object obj5, Object obj6, Object obj7) {
                                    invoke((RowScope) obj5, (Composer) obj6, ((Number) obj7).intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope rowScope, Composer composer2, int i6) {
                                    Intrinsics.checkNotNullParameter(rowScope, "$this$Button");
                                    if ((i6 & 17) != 16 || !composer2.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(2034260, i6, -1, "com.hermes.android.ui.moa.EditorContent.<anonymous> (MoaCouncilScreen.kt:400)");
                                        }
                                        TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(editorState.getOverwriteConfirmNeeded() ? R.string.moa_editor_overwrite_and_use : R.string.moa_editor_save_and_use, composer2, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 0, 0, 131070);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    composer2.skipToGroupEnd();
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, 805306416, 508);
                            composerStartRestartGroup.startReplaceGroup(-2073193402);
                            zChangedInstance4 = composerStartRestartGroup.changedInstance(moaCouncilViewModel) | composerStartRestartGroup.changedInstance(coroutineScope);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (!zChangedInstance4) {
                                objRememberedValue4 = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda19
                                    public final Object invoke() {
                                        return MoaCouncilScreenKt.EditorContent$lambda$49$lambda$48(moaCouncilViewModel, coroutineScope);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                composerStartRestartGroup.endReplaceGroup();
                                ButtonKt.TextButton((Function0) objRememberedValue4, SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, (int) r0, (Object) null), false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$MoaCouncilScreenKt.INSTANCE.m110getLambda13$app_release(), composerStartRestartGroup, 805306416, 508);
                                if (ComposerKt.isTraceInProgress()) {
                                }
                            }
                        }
                    }
                }
            } else {
                r0 = 1;
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.startReplaceGroup(-2073237057);
                zChangedInstance = composerStartRestartGroup.changedInstance(moaCouncilViewModel);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (!zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda16
                        public final Object invoke() {
                            return MoaCouncilScreenKt.EditorContent$lambda$43$lambda$42(moaCouncilViewModel);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composerStartRestartGroup.endReplaceGroup();
                ButtonKt.OutlinedButton((Function0) objRememberedValue, SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, (int) r0, (Object) null), false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$MoaCouncilScreenKt.INSTANCE.m109getLambda12$app_release(), composerStartRestartGroup, 805306416, 508);
                SectionHeader(StringResources_androidKt.stringResource(R.string.moa_editor_aggregator_section, composerStartRestartGroup, 0), StringResources_androidKt.stringResource(R.string.moa_editor_aggregator_hint, composerStartRestartGroup, 0), composerStartRestartGroup, 0);
                MoaSlot aggregator2 = editorState.getAggregator();
                List<SlotCandidate> candidates22 = uiState.getCandidates();
                composerStartRestartGroup.startReplaceGroup(-2073219422);
                zChangedInstance2 = composerStartRestartGroup.changedInstance(moaCouncilViewModel);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (!zChangedInstance2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                    objRememberedValue2 = new Function1() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda17
                        public final Object invoke(Object obj5) {
                            return MoaCouncilScreenKt.EditorContent$lambda$45$lambda$44(moaCouncilViewModel, (MoaSlot) obj5);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                composerStartRestartGroup.endReplaceGroup();
                SlotEditor(aggregator2, candidates22, (Function1) objRememberedValue2, null, composerStartRestartGroup, 3072);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_editor_cost_hint, new Object[]{Integer.valueOf(editorState.getReferences().size() + r0), Integer.valueOf(editorState.getReferences().size())}, composerStartRestartGroup, 0), (Modifier) null, TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(16), 0, false, 0, 0, (Function1) null, (TextStyle) null, composerStartRestartGroup, 3456, 6, 130034);
                composerStartRestartGroup.startReplaceGroup(-2073209057);
                if (editorState.getOverwriteConfirmNeeded()) {
                    TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_editor_name_conflict, new Object[]{StringsKt.trim(editorState.getName()).toString()}, composerStartRestartGroup, 0), (Modifier) null, Amber, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composerStartRestartGroup, 3456, 0, 131058);
                }
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.startReplaceGroup(-2073202267);
                zChangedInstance3 = composerStartRestartGroup.changedInstance(moaCouncilViewModel) | composerStartRestartGroup.changedInstance(coroutineScope);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (!zChangedInstance3 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                    objRememberedValue3 = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda18
                        public final Object invoke() {
                            return MoaCouncilScreenKt.EditorContent$lambda$47$lambda$46(moaCouncilViewModel, coroutineScope);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                composerStartRestartGroup.endReplaceGroup();
                ButtonKt.Button((Function0) objRememberedValue3, SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, (int) r0, (Object) null), false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(2034260, (boolean) r0, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt.EditorContent.11
                    public /* bridge */ /* synthetic */ Object invoke(Object obj5, Object obj6, Object obj7) {
                        invoke((RowScope) obj5, (Composer) obj6, ((Number) obj7).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(RowScope rowScope, Composer composer2, int i6) {
                        Intrinsics.checkNotNullParameter(rowScope, "$this$Button");
                        if ((i6 & 17) != 16 || !composer2.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(2034260, i6, -1, "com.hermes.android.ui.moa.EditorContent.<anonymous> (MoaCouncilScreen.kt:400)");
                            }
                            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(editorState.getOverwriteConfirmNeeded() ? R.string.moa_editor_overwrite_and_use : R.string.moa_editor_save_and_use, composer2, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 0, 0, 131070);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer2.skipToGroupEnd();
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, 805306416, 508);
                composerStartRestartGroup.startReplaceGroup(-2073193402);
                zChangedInstance4 = composerStartRestartGroup.changedInstance(moaCouncilViewModel) | composerStartRestartGroup.changedInstance(coroutineScope);
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (!zChangedInstance4 || objRememberedValue4 == Composer.Companion.getEmpty()) {
                    objRememberedValue4 = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda19
                        public final Object invoke() {
                            return MoaCouncilScreenKt.EditorContent$lambda$49$lambda$48(moaCouncilViewModel, coroutineScope);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                composerStartRestartGroup.endReplaceGroup();
                ButtonKt.TextButton((Function0) objRememberedValue4, SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, (int) r0, (Object) null), false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$MoaCouncilScreenKt.INSTANCE.m110getLambda13$app_release(), composerStartRestartGroup, 805306416, 508);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda20
                public final Object invoke(Object obj5, Object obj6) {
                    return MoaCouncilScreenKt.EditorContent$lambda$50(moaCouncilViewModel, coroutineScope, uiState, editorState, i, (Composer) obj5, ((Integer) obj6).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EditorContent$lambda$32$lambda$31(MoaCouncilViewModel moaCouncilViewModel, String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        moaCouncilViewModel.editorSetName(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EditorContent$lambda$37$lambda$34$lambda$33(MoaCouncilViewModel moaCouncilViewModel, int i, MoaSlot moaSlot) {
        Intrinsics.checkNotNullParameter(moaSlot, "it");
        moaCouncilViewModel.editorSetReference(i, moaSlot);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EditorContent$lambda$37$lambda$36$lambda$35(MoaCouncilViewModel moaCouncilViewModel, int i) {
        moaCouncilViewModel.editorRemoveReference(i);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EditorContent$lambda$43$lambda$42(MoaCouncilViewModel moaCouncilViewModel) {
        moaCouncilViewModel.editorAddReference();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EditorContent$lambda$45$lambda$44(MoaCouncilViewModel moaCouncilViewModel, MoaSlot moaSlot) {
        Intrinsics.checkNotNullParameter(moaSlot, "it");
        moaCouncilViewModel.editorSetAggregator(moaSlot);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EditorContent$lambda$47$lambda$46(MoaCouncilViewModel moaCouncilViewModel, CoroutineScope coroutineScope) {
        moaCouncilViewModel.save(coroutineScope, true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EditorContent$lambda$49$lambda$48(MoaCouncilViewModel moaCouncilViewModel, CoroutineScope coroutineScope) {
        moaCouncilViewModel.save(coroutineScope, false);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.ui.moa.MoaCouncilScreenKt$SlotEditor$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MoaCouncilScreen.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    static final class C00421 implements Function2<Composer, Integer, Unit> {
        final /* synthetic */ List<SlotCandidate> $candidates;
        final /* synthetic */ Function1<MoaSlot, Unit> $onChange;
        final /* synthetic */ Function0<Unit> $onRemove;
        final /* synthetic */ MoaSlot $slot;

        /* JADX WARN: Multi-variable type inference failed */
        C00421(MoaSlot moaSlot, Function1<? super MoaSlot, Unit> function1, Function0<Unit> function0, List<SlotCandidate> list) {
            this.$slot = moaSlot;
            this.$onChange = function1;
            this.$onRemove = function0;
            this.$candidates = list;
        }

        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            final MutableState mutableState;
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(523970976, i, -1, "com.hermes.android.ui.moa.SlotEditor.<anonymous> (MoaCouncilScreen.kt:418)");
                }
                Modifier modifier = PaddingKt.padding-3ABfNKs(Modifier.Companion, Dp.constructor-impl(10));
                final MoaSlot moaSlot = this.$slot;
                final Function1<MoaSlot, Unit> function1 = this.$onChange;
                Function0<Unit> function0 = this.$onRemove;
                final List<SlotCandidate> list = this.$candidates;
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
                Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                Modifier modifier2 = Modifier.Companion;
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer, 48);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer, modifier2);
                Function0 constructor2 = ComposeUiNode.Companion.getConstructor();
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
                Composer composer3 = Updater.constructor-impl(composer);
                Updater.set-impl(composer3, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.set-impl(composer3, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composer3.getInserting() || !Intrinsics.areEqual(composer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    composer3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                    composer3.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                }
                Updater.set-impl(composer3, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                RowScope rowScope = RowScopeInstance.INSTANCE;
                composer.startReplaceGroup(-40243591);
                Object objRememberedValue = composer.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt.mutableStateOf$default(false, (SnapshotMutationPolicy) null, 2, (Object) null);
                    composer.updateRememberedValue(objRememberedValue);
                }
                final MutableState mutableState2 = (MutableState) objRememberedValue;
                composer.endReplaceGroup();
                Modifier modifierWeight$default = RowScope.weight$default(rowScope, Modifier.Companion, 1.0f, false, 2, (Object) null);
                ComposerKt.sourceInformationMarkerStart(composer, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap3 = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer, modifierWeight$default);
                Function0 constructor3 = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor3);
                } else {
                    composer.useNode();
                }
                Composer composer4 = Updater.constructor-impl(composer);
                Updater.set-impl(composer4, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.set-impl(composer4, currentCompositionLocalMap3, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash3 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                    composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
                    composer4.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
                }
                Updater.set-impl(composer4, modifierMaterializeModifier3, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScope boxScope = BoxScopeInstance.INSTANCE;
                composer.startReplaceGroup(1027847849);
                Object objRememberedValue2 = composer.rememberedValue();
                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                    objRememberedValue2 = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$SlotEditor$1$$ExternalSyntheticLambda0
                        public final Object invoke() {
                            return MoaCouncilScreenKt.C00421.invoke$lambda$11$lambda$8$lambda$7$lambda$4$lambda$3(mutableState2);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue2);
                }
                composer.endReplaceGroup();
                ButtonKt.OutlinedButton((Function0) objRememberedValue2, SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(482194446, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$SlotEditor$1$1$1$1$2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                        invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(RowScope rowScope2, Composer composer5, int i2) {
                        int i3;
                        Object next;
                        String str;
                        Intrinsics.checkNotNullParameter(rowScope2, "$this$OutlinedButton");
                        if ((i2 & 6) == 0) {
                            i3 = i2 | (composer5.changed(rowScope2) ? 4 : 2);
                        } else {
                            i3 = i2;
                        }
                        if ((i3 & 19) != 18 || !composer5.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(482194446, i3, -1, "com.hermes.android.ui.moa.SlotEditor.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MoaCouncilScreen.kt:424)");
                            }
                            List<SlotCandidate> list2 = list;
                            MoaSlot moaSlot2 = moaSlot;
                            Iterator<T> it = list2.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    next = null;
                                    break;
                                } else {
                                    next = it.next();
                                    if (Intrinsics.areEqual(((SlotCandidate) next).getProviderSlug(), moaSlot2.getProvider())) {
                                        break;
                                    }
                                }
                            }
                            SlotCandidate slotCandidate = (SlotCandidate) next;
                            String displayName = slotCandidate != null ? slotCandidate.getDisplayName() : null;
                            composer5.startReplaceGroup(1142113044);
                            if (displayName == null) {
                                String provider = moaSlot.getProvider();
                                if (StringsKt.isBlank(provider)) {
                                    provider = StringResources_androidKt.stringResource(R.string.moa_editor_pick_provider, composer5, 0);
                                }
                                str = provider;
                            } else {
                                str = displayName;
                            }
                            composer5.endReplaceGroup();
                            TextKt.Text--4IGK_g(str, (Modifier) null, 0L, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 1, 0, (Function1) null, (TextStyle) null, composer5, 3072, 3072, 122870);
                            composer5.startReplaceGroup(1142121885);
                            if ((slotCandidate != null && !slotCandidate.getConfigured()) || (!StringsKt.isBlank(moaSlot.getProvider()) && slotCandidate == null)) {
                                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(4)), composer5, 6);
                                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.moa_editor_slot_unconfigured_badge, composer5, 0), (Modifier) null, MoaCouncilScreenKt.Amber, TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer5, 3456, 0, 131058);
                            }
                            composer5.endReplaceGroup();
                            SpacerKt.Spacer(RowScope.weight$default(rowScope2, Modifier.Companion, 1.0f, false, 2, (Object) null), composer5, 0);
                            IconKt.Icon-ww6aTOc(ArrowDropDownKt.getArrowDropDown(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(18)), 0L, composer5, 432, 8);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer5.skipToGroupEnd();
                    }
                }, composer, 54), composer, 805306422, 508);
                boolean zInvoke$lambda$11$lambda$8$lambda$1 = invoke$lambda$11$lambda$8$lambda$1(mutableState2);
                composer.startReplaceGroup(1027881738);
                Object objRememberedValue3 = composer.rememberedValue();
                if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                    mutableState = mutableState2;
                    objRememberedValue3 = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$SlotEditor$1$$ExternalSyntheticLambda1
                        public final Object invoke() {
                            return MoaCouncilScreenKt.C00421.invoke$lambda$11$lambda$8$lambda$7$lambda$6$lambda$5(mutableState);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue3);
                } else {
                    mutableState = mutableState2;
                }
                composer.endReplaceGroup();
                AndroidMenu_androidKt.DropdownMenu-IlH_yew(zInvoke$lambda$11$lambda$8$lambda$1, (Function0) objRememberedValue3, (Modifier) null, 0L, (ScrollState) null, (PopupProperties) null, (Shape) null, 0L, 0.0f, 0.0f, (BorderStroke) null, ComposableLambdaKt.rememberComposableLambda(2000101179, true, new MoaCouncilScreenKt$SlotEditor$1$1$1$1$4(list, function1, mutableState), composer, 54), composer, 48, 48, 2044);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.startReplaceGroup(-40169194);
                if (function0 != null) {
                    IconButtonKt.IconButton(function0, (Modifier) null, false, (IconButtonColors) null, (MutableInteractionSource) null, ComposableSingletons$MoaCouncilScreenKt.INSTANCE.m111getLambda14$app_release(), composer, 196608, 30);
                }
                composer.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                String model = moaSlot.getModel();
                TextFieldColors textFieldColorsFieldColors = MoaCouncilScreenKt.fieldColors(composer, 0);
                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null);
                composer.startReplaceGroup(-1866367877);
                boolean zChanged = composer.changed(function1) | composer.changed(moaSlot);
                Object objRememberedValue4 = composer.rememberedValue();
                if (zChanged || objRememberedValue4 == Composer.Companion.getEmpty()) {
                    objRememberedValue4 = new Function1() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$SlotEditor$1$$ExternalSyntheticLambda2
                        public final Object invoke(Object obj) {
                            return MoaCouncilScreenKt.C00421.invoke$lambda$11$lambda$10$lambda$9(function1, moaSlot, (String) obj);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue4);
                }
                composer.endReplaceGroup();
                OutlinedTextFieldKt.OutlinedTextField(model, (Function1) objRememberedValue4, modifierFillMaxWidth$default, false, false, (TextStyle) null, ComposableSingletons$MoaCouncilScreenKt.INSTANCE.m112getLambda15$app_release(), (Function2) null, (Function2) null, (Function2) null, (Function2) null, (Function2) null, (Function2) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, textFieldColorsFieldColors, composer, 1573248, 12582912, 0, 4063160);
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

        private static final boolean invoke$lambda$11$lambda$8$lambda$1(MutableState<Boolean> mutableState) {
            return ((Boolean) ((State) mutableState).getValue()).booleanValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$11$lambda$8$lambda$2(MutableState<Boolean> mutableState, boolean z) {
            mutableState.setValue(Boolean.valueOf(z));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$11$lambda$8$lambda$7$lambda$4$lambda$3(MutableState mutableState) {
            invoke$lambda$11$lambda$8$lambda$2(mutableState, true);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$11$lambda$8$lambda$7$lambda$6$lambda$5(MutableState mutableState) {
            invoke$lambda$11$lambda$8$lambda$2(mutableState, false);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$11$lambda$10$lambda$9(Function1 function1, MoaSlot moaSlot, String str) {
            Intrinsics.checkNotNullParameter(str, "it");
            function1.invoke(MoaSlot.copy$default(moaSlot, null, str, 1, null));
            return Unit.INSTANCE;
        }
    }

    private static final void SlotEditor(final MoaSlot moaSlot, final List<SlotCandidate> list, final Function1<? super MoaSlot, Unit> function1, final Function0<Unit> function0, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-64008384);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(moaSlot) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(list) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(function1) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(function0) ? 2048 : 1024;
        }
        if ((i2 & 1171) != 1170 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-64008384, i2, -1, "com.hermes.android.ui.moa.SlotEditor (MoaCouncilScreen.kt:416)");
            }
            m127GlassCard3JVO9M(0L, ComposableLambdaKt.rememberComposableLambda(523970976, true, new C00421(moaSlot, function1, function0, list), composerStartRestartGroup, 54), composerStartRestartGroup, 48, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda5
                public final Object invoke(Object obj, Object obj2) {
                    return MoaCouncilScreenKt.SlotEditor$lambda$51(moaSlot, list, function1, function0, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: renamed from: GlassCard-3J-VO9M, reason: not valid java name */
    private static final void m127GlassCard3JVO9M(long j, final Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, final int i, final int i2) {
        int i3;
        Composer composerStartRestartGroup = composer.startRestartGroup(1936178595);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(j) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(function2) ? 32 : 16;
        }
        if ((i3 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (i4 != 0) {
                j = GlassBorder;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1936178595, i3, -1, "com.hermes.android.ui.moa.GlassCard (MoaCouncilScreen.kt:484)");
            }
            float f = 14;
            Modifier modifier = BorderKt.border-xT4_qwU(BackgroundKt.background-bw27NRU(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Glass, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f))), Dp.constructor-impl(1), j, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f)));
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composerStartRestartGroup, 0);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier);
            Function0 constructor = ComposeUiNode.Companion.getConstructor();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composer2 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer2, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer2, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer2.getInserting() || !Intrinsics.areEqual(composer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                composer2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                composer2.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.set-impl(composer2, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -384784025, "C88@4444L9:Column.kt#2w3rfo");
            ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
            function2.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 3) & 14));
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.endNode();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        final long j2 = j;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda4
                public final Object invoke(Object obj, Object obj2) {
                    return MoaCouncilScreenKt.GlassCard_3J_VO9M$lambda$53(j2, function2, i, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Badge-RPmYEkk, reason: not valid java name */
    public static final void m126BadgeRPmYEkk(final String str, final long j, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1133006874);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(j) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1133006874, i2, -1, "com.hermes.android.ui.moa.Badge (MoaCouncilScreen.kt:494)");
            }
            composer2 = composerStartRestartGroup;
            SurfaceKt.Surface-T9BRK9s((Modifier) null, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(6)), Color.copy-wmQWz5c$default(j, 0.2f, 0.0f, 0.0f, 0.0f, 14, (Object) null), 0L, 0.0f, 0.0f, BorderStrokeKt.BorderStroke-cXLIe8U(Dp.constructor-impl(1), Color.copy-wmQWz5c$default(j, 0.5f, 0.0f, 0.0f, 0.0f, 14, (Object) null)), ComposableLambdaKt.rememberComposableLambda(-272228565, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$Badge$1
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i3) {
                    if ((i3 & 3) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-272228565, i3, -1, "com.hermes.android.ui.moa.Badge.<anonymous> (MoaCouncilScreen.kt:500)");
                        }
                        long sp = TextUnitKt.getSp(10);
                        TextKt.Text--4IGK_g(str, PaddingKt.padding-VpY3zN4(Modifier.Companion, Dp.constructor-impl(6), Dp.constructor-impl(2)), MoaCouncilScreenKt.TextPrimary, sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 3504, 0, 131056);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            }, composerStartRestartGroup, 54), composer2, 12582912, 57);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda13
                public final Object invoke(Object obj, Object obj2) {
                    return MoaCouncilScreenKt.Badge_RPmYEkk$lambda$54(str, j, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void SectionHeader(final String str, final String str2, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(463184275);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(str2) ? 32 : 16;
        }
        int i3 = i2;
        if ((i3 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(463184275, i3, -1, "com.hermes.android.ui.moa.SectionHeader (MoaCouncilScreen.kt:506)");
            }
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            Modifier modifier = Modifier.Companion;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composerStartRestartGroup, 0);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier);
            Function0 constructor = ComposeUiNode.Companion.getConstructor();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composer3 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer3, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer3, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer3.getInserting() || !Intrinsics.areEqual(composer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                composer3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                composer3.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.set-impl(composer3, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -384784025, "C88@4444L9:Column.kt#2w3rfo");
            ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
            composer2 = composerStartRestartGroup;
            TextKt.Text--4IGK_g(str, (Modifier) null, TextPrimary, TextUnitKt.getSp(14), (FontStyle) null, FontWeight.Companion.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, (i3 & 14) | 200064, 0, 131026);
            TextKt.Text--4IGK_g(str2, (Modifier) null, TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(16), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, ((i3 >> 3) & 14) | 3456, 6, 130034);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$$ExternalSyntheticLambda6
                public final Object invoke(Object obj, Object obj2) {
                    return MoaCouncilScreenKt.SectionHeader$lambda$56(str, str2, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextFieldColors fieldColors(Composer composer, int i) {
        composer.startReplaceGroup(42755992);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(42755992, i, -1, "com.hermes.android.ui.moa.fieldColors (MoaCouncilScreen.kt:514)");
        }
        OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
        long j = TextPrimary;
        TextFieldColors textFieldColors = outlinedTextFieldDefaults.colors-0hiis_0(j, j, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, (TextSelectionColors) null, GlassBorder, Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.15f, 0.0f, 0.0f, 0.0f, 14, (Object) null), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, TextSecondary, TextMuted, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composer, 54, 432, 27648, 0, 3072, 2122311676, 4095);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return textFieldColors;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MoaCouncilViewModel.UiState MoaCouncilScreen$lambda$0(State<MoaCouncilViewModel.UiState> state) {
        return (MoaCouncilViewModel.UiState) state.getValue();
    }
}
