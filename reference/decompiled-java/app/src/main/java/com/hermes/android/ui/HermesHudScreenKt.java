package com.hermes.android.ui;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.ScrollKt;
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
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.filled.MessageKt;
import androidx.compose.material.icons.automirrored.filled.NotesKt;
import androidx.compose.material.icons.filled.AutoAwesomeKt;
import androidx.compose.material.icons.filled.BuildKt;
import androidx.compose.material.icons.filled.CheckBoxKt;
import androidx.compose.material.icons.filled.ComputerKt;
import androidx.compose.material.icons.filled.FolderKt;
import androidx.compose.material.icons.filled.ForumKt;
import androidx.compose.material.icons.filled.InboxKt;
import androidx.compose.material.icons.filled.TuneKt;
import androidx.compose.material.icons.filled.WarningKt;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.TabRowKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.IntState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutationPolicy;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.vector.ImageVector;
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
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.R;
import com.hermes.android.data.HermesHudRepository;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: HermesHudScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a#\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0012H\u0007¢\u0006\u0002\u0010\u0013\u001a\u0017\u0010\u0014\u001a\u00020\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0003¢\u0006\u0002\u0010\u0017\u001a#\u0010\u0018\u001a\u00020\u000e2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u000f\u001a\u00020\u0010H\u0003¢\u0006\u0002\u0010\u001c\u001a\u001b\u0010\u001d\u001a\u00020\u000e2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001aH\u0003¢\u0006\u0002\u0010 \u001a%\u0010!\u001a\u00020\u000e2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u001a2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0003¢\u0006\u0002\u0010$\u001a\u001b\u0010%\u001a\u00020\u000e2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020'0\u001aH\u0003¢\u0006\u0002\u0010 \u001a7\u0010(\u001a\u00020\u000e2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010*2\u001c\u0010+\u001a\u0018\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020\u000e0,¢\u0006\u0002\b.¢\u0006\u0002\b/H\u0003¢\u0006\u0002\u00100\u001a%\u00101\u001a\u00020\u000e2\u0006\u00102\u001a\u00020*2\u0006\u00103\u001a\u00020*2\u0006\u00104\u001a\u000205H\u0003¢\u0006\u0002\u00106\u001a\u001d\u00107\u001a\u00020\u000e2\u0006\u00102\u001a\u00020*2\u0006\u00103\u001a\u00020*H\u0003¢\u0006\u0002\u00108\u001a\u0017\u00109\u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\u0003H\u0003¢\u0006\u0004\b;\u0010<\u001a\u0015\u0010=\u001a\u00020\u000e2\u0006\u0010>\u001a\u00020?H\u0003¢\u0006\u0002\u0010@\u001a\u0015\u0010A\u001a\u00020\u000e2\u0006\u0010B\u001a\u00020*H\u0003¢\u0006\u0002\u0010C\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\u0006\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\u0007\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\t\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\n\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\u000b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\f\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004¨\u0006D²\u0006\f\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u008a\u008e\u0002²\u0006\u0010\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u008a\u008e\u0002²\u0006\u0010\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001aX\u008a\u008e\u0002²\u0006\u0010\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u001aX\u008a\u008e\u0002²\u0006\u0010\u0010E\u001a\b\u0012\u0004\u0012\u00020'0\u001aX\u008a\u008e\u0002²\u0006\n\u0010F\u001a\u00020GX\u008a\u008e\u0002²\u0006\n\u0010H\u001a\u00020?X\u008a\u008e\u0002²\u0006\n\u0010I\u001a\u00020?X\u008a\u008e\u0002²\u0006\n\u0010J\u001a\u00020GX\u008a\u008e\u0002"}, d2 = {"HudBg", "Landroidx/compose/ui/graphics/Brush;", "CardBg", "Landroidx/compose/ui/graphics/Color;", "J", "CardBorder", "Accent", "AccentGreen", "AccentAmber", "AccentRed", "TextPrimary", "TextSecondary", "TextMuted", "HermesHudScreen", BuildConfig.FLAVOR, "hudRepo", "Lcom/hermes/android/data/HermesHudRepository;", "onBack", "Lkotlin/Function0;", "(Lcom/hermes/android/data/HermesHudRepository;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "OverviewTab", "overview", "Lcom/hermes/android/data/HermesHudRepository$HudOverview;", "(Lcom/hermes/android/data/HermesHudRepository$HudOverview;Landroidx/compose/runtime/Composer;I)V", "SessionsTab", "sessions", BuildConfig.FLAVOR, "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;", "(Ljava/util/List;Lcom/hermes/android/data/HermesHudRepository;Landroidx/compose/runtime/Composer;I)V", "ToolsTab", "tools", "Lcom/hermes/android/data/HermesHudRepository$ToolUsage;", "(Ljava/util/List;Landroidx/compose/runtime/Composer;I)V", "MemoryTab", "memories", "Lcom/hermes/android/data/HermesHudRepository$MemoryEntry;", "(Ljava/util/List;Lcom/hermes/android/data/HermesHudRepository$HudOverview;Landroidx/compose/runtime/Composer;I)V", "CronTab", "jobs", "Lcom/hermes/android/data/HermesHudRepository$CronJob;", "HudCard", "title", BuildConfig.FLAVOR, "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/ColumnScope;", "Lkotlin/ExtensionFunctionType;", "Landroidx/compose/runtime/Composable;", "(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "StatCell", "label", AppMeasurementSdk.ConditionalUserProperty.VALUE, "icon", "Landroidx/compose/ui/graphics/vector/ImageVector;", "(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)V", "MiniStat", "(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V", "StatusDot", "color", "StatusDot-ek8zF_U", "(JLandroidx/compose/runtime/Composer;I)V", "CapacityBar", "pct", BuildConfig.FLAVOR, "(ILandroidx/compose/runtime/Composer;I)V", "EmptyState", "message", "(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V", "app_release", "cronJobs", "isLoading", BuildConfig.FLAVOR, "selectedTab", "refreshKey", "expanded"}, k = 2, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class HermesHudScreenKt {
    private static final Brush HudBg = Brush.Companion.verticalGradient-8A-3gB4$default(Brush.Companion, CollectionsKt.listOf(new Color[]{Color.box-impl(ColorKt.Color(4279180077L)), Color.box-impl(ColorKt.Color(4279641412L)), Color.box-impl(ColorKt.Color(4279180077L))}), 0.0f, 0.0f, 0, 14, (Object) null);
    private static final long CardBg = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.1f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
    private static final long CardBorder = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.18f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
    private static final long Accent = ColorKt.Color(4282090230L);
    private static final long AccentGreen = ColorKt.Color(4280468830L);
    private static final long AccentAmber = ColorKt.Color(4294286859L);
    private static final long AccentRed = ColorKt.Color(4293870660L);
    private static final long TextPrimary = Color.Companion.getWhite-0d7_KjU();
    private static final long TextSecondary = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.7f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
    private static final long TextMuted = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.45f, 0.0f, 0.0f, 0.0f, 14, (Object) null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CapacityBar$lambda$61(int i, int i2, Composer composer, int i3) {
        CapacityBar(i, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CronTab$lambda$49(List list, int i, Composer composer, int i2) {
        CronTab(list, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CronTab$lambda$51(List list, int i, Composer composer, int i2) {
        CronTab(list, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EmptyState$lambda$64(String str, int i, Composer composer, int i2) {
        EmptyState(str, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit HermesHudScreen$lambda$33(HermesHudRepository hermesHudRepository, Function0 function0, int i, Composer composer, int i2) {
        HermesHudScreen(hermesHudRepository, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit HudCard$lambda$53(String str, Function3 function3, int i, int i2, Composer composer, int i3) {
        HudCard(str, function3, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit MemoryTab$lambda$41(List list, HermesHudRepository.HudOverview hudOverview, int i, Composer composer, int i2) {
        MemoryTab(list, hudOverview, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit MemoryTab$lambda$48(List list, HermesHudRepository.HudOverview hudOverview, int i, Composer composer, int i2) {
        MemoryTab(list, hudOverview, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit MiniStat$lambda$57(String str, String str2, int i, Composer composer, int i2) {
        MiniStat(str, str2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit OverviewTab$lambda$34(HermesHudRepository.HudOverview hudOverview, int i, Composer composer, int i2) {
        OverviewTab(hudOverview, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit OverviewTab$lambda$35(HermesHudRepository.HudOverview hudOverview, int i, Composer composer, int i2) {
        OverviewTab(hudOverview, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SessionsTab$lambda$36(List list, HermesHudRepository hermesHudRepository, int i, Composer composer, int i2) {
        SessionsTab(list, hermesHudRepository, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SessionsTab$lambda$38(List list, HermesHudRepository hermesHudRepository, int i, Composer composer, int i2) {
        SessionsTab(list, hermesHudRepository, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit StatCell$lambda$55(String str, String str2, ImageVector imageVector, int i, Composer composer, int i2) {
        StatCell(str, str2, imageVector, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit StatusDot_ek8zF_U$lambda$58(long j, int i, Composer composer, int i2) {
        m57StatusDotek8zF_U(j, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ToolsTab$lambda$39(List list, int i, Composer composer, int i2) {
        ToolsTab(list, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ToolsTab$lambda$40(List list, int i, Composer composer, int i2) {
        ToolsTab(list, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v2, types: [boolean, int] */
    public static final void HermesHudScreen(final HermesHudRepository hermesHudRepository, final Function0<Unit> function0, Composer composer, final int i) {
        int i2;
        MutableIntState mutableIntState;
        MutableIntState mutableIntState2;
        Integer num;
        ?? r15;
        int i3;
        int i4;
        Composer composer2;
        Intrinsics.checkNotNullParameter(hermesHudRepository, "hudRepo");
        Intrinsics.checkNotNullParameter(function0, "onBack");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1252594343);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(hermesHudRepository) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(function0) ? 32 : 16;
        }
        int i5 = i2;
        if ((i5 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1252594343, i5, -1, "com.hermes.android.ui.HermesHudScreen (HermesHudScreen.kt:63)");
            }
            composerStartRestartGroup.startReplaceGroup(1629333888);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = SnapshotStateKt.mutableStateOf$default((Object) null, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MutableState mutableState = (MutableState) objRememberedValue;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(1629336716);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = SnapshotStateKt.mutableStateOf$default(CollectionsKt.emptyList(), (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            MutableState mutableState2 = (MutableState) objRememberedValue2;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(1629339818);
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                objRememberedValue3 = SnapshotStateKt.mutableStateOf$default(CollectionsKt.emptyList(), (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            MutableState mutableState3 = (MutableState) objRememberedValue3;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(1629342956);
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                objRememberedValue4 = SnapshotStateKt.mutableStateOf$default(CollectionsKt.emptyList(), (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            MutableState mutableState4 = (MutableState) objRememberedValue4;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(1629346152);
            Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                objRememberedValue5 = SnapshotStateKt.mutableStateOf$default(CollectionsKt.emptyList(), (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            MutableState mutableState5 = (MutableState) objRememberedValue5;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(1629349214);
            Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                objRememberedValue6 = SnapshotStateKt.mutableStateOf$default(true, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            }
            MutableState mutableState6 = (MutableState) objRememberedValue6;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(1629351038);
            Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                objRememberedValue7 = SnapshotIntStateKt.mutableIntStateOf(0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
            }
            MutableIntState mutableIntState3 = (MutableIntState) objRememberedValue7;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(1629352830);
            Object objRememberedValue8 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue8 == Composer.Companion.getEmpty()) {
                objRememberedValue8 = SnapshotIntStateKt.mutableIntStateOf(0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
            }
            MutableIntState mutableIntState4 = (MutableIntState) objRememberedValue8;
            composerStartRestartGroup.endReplaceGroup();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 773894976, "CC(rememberCoroutineScope)482@20332L144:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -954367824, "CC(remember):Effects.kt#9igjgp");
            Object objRememberedValue9 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue9 == Composer.Companion.getEmpty()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, composerStartRestartGroup));
                composerStartRestartGroup.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
                objRememberedValue9 = compositionScopedCoroutineScopeCanceller;
            }
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ((CompositionScopedCoroutineScopeCanceller) objRememberedValue9).getCoroutineScope();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            Integer numValueOf = Integer.valueOf(HermesHudScreen$lambda$22(mutableIntState4));
            composerStartRestartGroup.startReplaceGroup(1629357292);
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(hermesHudRepository);
            HermesHudScreenKt$HermesHudScreen$1$1 hermesHudScreenKt$HermesHudScreen$1$1RememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || hermesHudScreenKt$HermesHudScreen$1$1RememberedValue == Composer.Companion.getEmpty()) {
                mutableIntState = mutableIntState4;
                mutableIntState2 = mutableIntState3;
                num = numValueOf;
                r15 = 0;
                i3 = 18;
                i4 = i5;
                hermesHudScreenKt$HermesHudScreen$1$1RememberedValue = new HermesHudScreenKt$HermesHudScreen$1$1(mutableState6, hermesHudRepository, mutableState, mutableState2, mutableState3, mutableState4, mutableState5, null);
                composerStartRestartGroup.updateRememberedValue(hermesHudScreenKt$HermesHudScreen$1$1RememberedValue);
            } else {
                num = numValueOf;
                mutableIntState = mutableIntState4;
                mutableIntState2 = mutableIntState3;
                i3 = 18;
                i4 = i5;
                r15 = 0;
            }
            composerStartRestartGroup.endReplaceGroup();
            EffectsKt.LaunchedEffect(num, (Function2) hermesHudScreenKt$HermesHudScreen$1$1RememberedValue, composerStartRestartGroup, (int) r15);
            Modifier modifierBackground$default = BackgroundKt.background$default(SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, (Object) null), HudBg, (Shape) null, 0.0f, 6, (Object) null);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), (boolean) r15);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, (int) r15);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierBackground$default);
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
            Updater.set-impl(composer3, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer3, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer3.getInserting() || !Intrinsics.areEqual(composer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                composer3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                composer3.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.set-impl(composer3, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScope boxScope = BoxScopeInstance.INSTANCE;
            Modifier modifierStatusBarsPadding = WindowInsetsPadding_androidKt.statusBarsPadding(SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, (Object) null));
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composerStartRestartGroup, 0);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierStatusBarsPadding);
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
            Composer composer4 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer4, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer4, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                composer4.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
            }
            Updater.set-impl(composer4, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -384784025, "C88@4444L9:Column.kt#2w3rfo");
            ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
            Modifier modifier = PaddingKt.padding-VpY3zN4$default(BackgroundKt.background-bw27NRU$default(SizeKt.height-3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(56)), Color.copy-wmQWz5c$default(Color.Companion.getBlack-0d7_KjU(), 0.3f, 0.0f, 0.0f, 0.0f, 14, (Object) null), (Shape) null, 2, (Object) null), Dp.constructor-impl(8), 0.0f, 2, (Object) null);
            Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composerStartRestartGroup, 48);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier);
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
            Composer composer5 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer5, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer5, currentCompositionLocalMap3, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash3 = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer5.getInserting() || !Intrinsics.areEqual(composer5.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                composer5.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
                composer5.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
            }
            Updater.set-impl(composer5, modifierMaterializeModifier3, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -407840262, "C101@5126L9:Row.kt#2w3rfo");
            RowScope rowScope = RowScopeInstance.INSTANCE;
            IconButtonKt.IconButton(function0, (Modifier) null, false, (IconButtonColors) null, (MutableInteractionSource) null, ComposableSingletons$HermesHudScreenKt.INSTANCE.m37getLambda1$app_release(), composerStartRestartGroup, ((i4 >> 3) & 14) | 196608, 30);
            composer2 = composerStartRestartGroup;
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.hud_title, composerStartRestartGroup, 0), PaddingKt.padding-qDBjuR0$default(RowScope.weight$default(rowScope, Modifier.Companion, 1.0f, false, 2, (Object) null), Dp.constructor-impl(4), 0.0f, 0.0f, 0.0f, 14, (Object) null), TextPrimary, TextUnitKt.getSp(i3), (FontStyle) null, FontWeight.Companion.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 200064, 0, 131024);
            composer2.startReplaceGroup(1427606794);
            Object objRememberedValue10 = composer2.rememberedValue();
            if (objRememberedValue10 == Composer.Companion.getEmpty()) {
                final MutableIntState mutableIntState5 = mutableIntState;
                objRememberedValue10 = new Function0() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda9
                    public final Object invoke() {
                        return HermesHudScreenKt.HermesHudScreen$lambda$32$lambda$31$lambda$27$lambda$26$lambda$25(mutableIntState5);
                    }
                };
                composer2.updateRememberedValue(objRememberedValue10);
            }
            composer2.endReplaceGroup();
            IconButtonKt.IconButton((Function0) objRememberedValue10, (Modifier) null, false, (IconButtonColors) null, (MutableInteractionSource) null, ComposableSingletons$HermesHudScreenKt.INSTANCE.m38getLambda2$app_release(), composer2, 196614, 30);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            List listListOf = CollectionsKt.listOf(new String[]{StringResources_androidKt.stringResource(R.string.hud_tab_overview, composer2, 0), StringResources_androidKt.stringResource(R.string.hud_tab_sessions, composer2, 0), StringResources_androidKt.stringResource(R.string.hud_tab_tools, composer2, 0), StringResources_androidKt.stringResource(R.string.hud_tab_memory, composer2, 0), StringResources_androidKt.stringResource(R.string.hud_tab_cron, composer2, 0)});
            int iHermesHudScreen$lambda$19 = HermesHudScreen$lambda$19(mutableIntState2);
            long j = Color.Companion.getTransparent-0d7_KjU();
            long j2 = Accent;
            float f = 12;
            MutableIntState mutableIntState6 = mutableIntState2;
            TabRowKt.ScrollableTabRow-sKfQg0A(iHermesHudScreen$lambda$19, (Modifier) null, j, j2, Dp.constructor-impl(f), ComposableSingletons$HermesHudScreenKt.INSTANCE.m39getLambda3$app_release(), ComposableSingletons$HermesHudScreenKt.INSTANCE.m40getLambda4$app_release(), ComposableLambdaKt.rememberComposableLambda(-649219331, true, new HermesHudScreenKt$HermesHudScreen$2$1$2(listListOf, mutableIntState6), composer2, 54), composer2, 14380416, 2);
            if (HermesHudScreen$lambda$16(mutableState6)) {
                composer2.startReplaceGroup(-808312462);
                Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, (Object) null);
                Alignment center = Alignment.Companion.getCenter();
                ComposerKt.sourceInformationMarkerStart(composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
                ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash4 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                CompositionLocalMap currentCompositionLocalMap4 = composer2.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxSize$default);
                Function0 constructor4 = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer2.startReusableNode();
                if (composer2.getInserting()) {
                    composer2.createNode(constructor4);
                } else {
                    composer2.useNode();
                }
                Composer composer6 = Updater.constructor-impl(composer2);
                Updater.set-impl(composer6, measurePolicyMaybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.set-impl(composer6, currentCompositionLocalMap4, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash4 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composer6.getInserting() || !Intrinsics.areEqual(composer6.rememberedValue(), Integer.valueOf(currentCompositeKeyHash4))) {
                    composer6.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash4));
                    composer6.apply(Integer.valueOf(currentCompositeKeyHash4), setCompositeKeyHash4);
                }
                Updater.set-impl(composer6, modifierMaterializeModifier4, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScope boxScope2 = BoxScopeInstance.INSTANCE;
                Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                ComposerKt.sourceInformationMarkerStart(composer2, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                Modifier modifier2 = Modifier.Companion;
                MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, composer2, 48);
                ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash5 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                CompositionLocalMap currentCompositionLocalMap5 = composer2.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composer2, modifier2);
                Function0 constructor5 = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer2.startReusableNode();
                if (composer2.getInserting()) {
                    composer2.createNode(constructor5);
                } else {
                    composer2.useNode();
                }
                Composer composer7 = Updater.constructor-impl(composer2);
                Updater.set-impl(composer7, measurePolicyColumnMeasurePolicy2, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.set-impl(composer7, currentCompositionLocalMap5, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash5 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composer7.getInserting() || !Intrinsics.areEqual(composer7.rememberedValue(), Integer.valueOf(currentCompositeKeyHash5))) {
                    composer7.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash5));
                    composer7.apply(Integer.valueOf(currentCompositeKeyHash5), setCompositeKeyHash5);
                }
                Updater.set-impl(composer7, modifierMaterializeModifier5, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer2, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                ColumnScope columnScope2 = ColumnScopeInstance.INSTANCE;
                ProgressIndicatorKt.CircularProgressIndicator-LxG7B9w(SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(40)), j2, Dp.constructor-impl(3), 0L, 0, composer2, 438, 24);
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f)), composer2, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.hud_loading, composer2, 0), (Modifier) null, TextSecondary, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 131058);
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
                composer2.endReplaceGroup();
            } else {
                composer2.startReplaceGroup(-807800745);
                Modifier modifier3 = PaddingKt.padding-VpY3zN4(ScrollKt.verticalScroll$default(SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, (Object) null), ScrollKt.rememberScrollState(0, composer2, 0, 1), false, (FlingBehavior) null, false, 14, (Object) null), Dp.constructor-impl(16), Dp.constructor-impl(f));
                Arrangement.Vertical vertical = Arrangement.INSTANCE.spacedBy-0680j_4(Dp.constructor-impl(f));
                ComposerKt.sourceInformationMarkerStart(composer2, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                MeasurePolicy measurePolicyColumnMeasurePolicy3 = ColumnKt.columnMeasurePolicy(vertical, Alignment.Companion.getStart(), composer2, 6);
                ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash6 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                CompositionLocalMap currentCompositionLocalMap6 = composer2.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composer2, modifier3);
                Function0 constructor6 = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer2.startReusableNode();
                if (composer2.getInserting()) {
                    composer2.createNode(constructor6);
                } else {
                    composer2.useNode();
                }
                Composer composer8 = Updater.constructor-impl(composer2);
                Updater.set-impl(composer8, measurePolicyColumnMeasurePolicy3, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.set-impl(composer8, currentCompositionLocalMap6, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash6 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composer8.getInserting() || !Intrinsics.areEqual(composer8.rememberedValue(), Integer.valueOf(currentCompositeKeyHash6))) {
                    composer8.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash6));
                    composer8.apply(Integer.valueOf(currentCompositeKeyHash6), setCompositeKeyHash6);
                }
                Updater.set-impl(composer8, modifierMaterializeModifier6, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer2, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                ColumnScope columnScope3 = ColumnScopeInstance.INSTANCE;
                int iHermesHudScreen$lambda$192 = HermesHudScreen$lambda$19(mutableIntState6);
                if (iHermesHudScreen$lambda$192 == 0) {
                    composer2.startReplaceGroup(1427703663);
                    OverviewTab(HermesHudScreen$lambda$1(mutableState), composer2, 0);
                    composer2.endReplaceGroup();
                    Unit unit = Unit.INSTANCE;
                } else if (iHermesHudScreen$lambda$192 == 1) {
                    composer2.startReplaceGroup(1427705304);
                    SessionsTab(HermesHudScreen$lambda$4(mutableState2), hermesHudRepository, composer2, (i4 << 3) & 112);
                    composer2.endReplaceGroup();
                    Unit unit2 = Unit.INSTANCE;
                } else if (iHermesHudScreen$lambda$192 == 2) {
                    composer2.startReplaceGroup(1427707209);
                    ToolsTab(HermesHudScreen$lambda$7(mutableState3), composer2, 0);
                    composer2.endReplaceGroup();
                    Unit unit3 = Unit.INSTANCE;
                } else if (iHermesHudScreen$lambda$192 == 3) {
                    composer2.startReplaceGroup(1427708663);
                    MemoryTab(HermesHudScreen$lambda$10(mutableState4), HermesHudScreen$lambda$1(mutableState), composer2, 0);
                    composer2.endReplaceGroup();
                    Unit unit4 = Unit.INSTANCE;
                } else if (iHermesHudScreen$lambda$192 == 4) {
                    composer2.startReplaceGroup(1427710539);
                    CronTab(HermesHudScreen$lambda$13(mutableState5), composer2, 0);
                    composer2.endReplaceGroup();
                    Unit unit5 = Unit.INSTANCE;
                } else {
                    composer2.startReplaceGroup(1309391912);
                    composer2.endReplaceGroup();
                    Unit unit6 = Unit.INSTANCE;
                }
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(24)), composer2, 6);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                composer2.endReplaceGroup();
            }
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
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda10
                public final Object invoke(Object obj, Object obj2) {
                    return HermesHudScreenKt.HermesHudScreen$lambda$33(hermesHudRepository, function0, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final HermesHudRepository.HudOverview HermesHudScreen$lambda$1(MutableState<HermesHudRepository.HudOverview> mutableState) {
        return (HermesHudRepository.HudOverview) ((State) mutableState).getValue();
    }

    private static final List<HermesHudRepository.SessionInfo> HermesHudScreen$lambda$4(MutableState<List<HermesHudRepository.SessionInfo>> mutableState) {
        return (List) ((State) mutableState).getValue();
    }

    private static final List<HermesHudRepository.ToolUsage> HermesHudScreen$lambda$7(MutableState<List<HermesHudRepository.ToolUsage>> mutableState) {
        return (List) ((State) mutableState).getValue();
    }

    private static final List<HermesHudRepository.MemoryEntry> HermesHudScreen$lambda$10(MutableState<List<HermesHudRepository.MemoryEntry>> mutableState) {
        return (List) ((State) mutableState).getValue();
    }

    private static final List<HermesHudRepository.CronJob> HermesHudScreen$lambda$13(MutableState<List<HermesHudRepository.CronJob>> mutableState) {
        return (List) ((State) mutableState).getValue();
    }

    private static final boolean HermesHudScreen$lambda$16(MutableState<Boolean> mutableState) {
        return ((Boolean) ((State) mutableState).getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void HermesHudScreen$lambda$17(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int HermesHudScreen$lambda$19(MutableIntState mutableIntState) {
        return ((IntState) mutableIntState).getIntValue();
    }

    private static final int HermesHudScreen$lambda$22(MutableIntState mutableIntState) {
        return ((IntState) mutableIntState).getIntValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit HermesHudScreen$lambda$32$lambda$31$lambda$27$lambda$26$lambda$25(MutableIntState mutableIntState) {
        mutableIntState.setIntValue(HermesHudScreen$lambda$22(mutableIntState) + 1);
        return Unit.INSTANCE;
    }

    private static final void OverviewTab(final HermesHudRepository.HudOverview hudOverview, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1082617647);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(hudOverview) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i2 & 3) != 2 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1082617647, i2, -1, "com.hermes.android.ui.OverviewTab (HermesHudScreen.kt:200)");
            }
            composerStartRestartGroup.startReplaceGroup(-1495247199);
            if (hudOverview == null) {
                EmptyState(StringResources_androidKt.stringResource(R.string.hud_no_data, composerStartRestartGroup, 0), composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda16
                        public final Object invoke(Object obj, Object obj2) {
                            return HermesHudScreenKt.OverviewTab$lambda$34(hudOverview, i, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    });
                    return;
                }
                return;
            }
            composerStartRestartGroup.endReplaceGroup();
            HudCard(StringResources_androidKt.stringResource(R.string.hud_card_active_model, composerStartRestartGroup, 0), ComposableLambdaKt.rememberComposableLambda(-859280026, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.HermesHudScreenKt.OverviewTab.2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke((ColumnScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope columnScope, Composer composer2, int i3) {
                    Intrinsics.checkNotNullParameter(columnScope, "$this$HudCard");
                    if ((i3 & 17) != 16 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-859280026, i3, -1, "com.hermes.android.ui.OverviewTab.<anonymous> (HermesHudScreen.kt:208)");
                        }
                        Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                        HermesHudRepository.HudOverview hudOverview2 = hudOverview;
                        ComposerKt.sourceInformationMarkerStart(composer2, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                        Modifier modifier = Modifier.Companion;
                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer2, 48);
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
                        HermesHudScreenKt.m57StatusDotek8zF_U(HermesHudScreenKt.AccentGreen, composer2, 6);
                        SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), composer2, 6);
                        ComposerKt.sourceInformationMarkerStart(composer2, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                        Modifier modifier2 = Modifier.Companion;
                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer2, 0);
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
                        Updater.set-impl(composer4, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                        Updater.set-impl(composer4, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                        Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                        if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                            composer4.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                        }
                        Updater.set-impl(composer4, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
                        ComposerKt.sourceInformationMarkerStart(composer2, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                        ColumnScope columnScope2 = ColumnScopeInstance.INSTANCE;
                        composer2.startReplaceGroup(-1475789008);
                        String model = hudOverview2.getModel();
                        if (model.length() == 0) {
                            model = StringResources_androidKt.stringResource(R.string.hud_not_configured, composer2, 0);
                        }
                        composer2.endReplaceGroup();
                        TextKt.Text--4IGK_g(model, (Modifier) null, HermesHudScreenKt.TextPrimary, TextUnitKt.getSp(16), (FontStyle) null, FontWeight.Companion.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 200064, 0, 131026);
                        int i4 = R.string.hud_provider;
                        String provider = hudOverview2.getProvider();
                        if (provider.length() == 0) {
                            provider = "—";
                        }
                        TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(i4, new Object[]{provider}, composer2, 0), (Modifier) null, HermesHudScreenKt.TextSecondary, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 131058);
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
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 48, 0);
            HudCard(StringResources_androidKt.stringResource(R.string.hud_card_session_stats, composerStartRestartGroup, 0), ComposableLambdaKt.rememberComposableLambda(654990159, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.HermesHudScreenKt.OverviewTab.3
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke((ColumnScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope columnScope, Composer composer2, int i3) {
                    Intrinsics.checkNotNullParameter(columnScope, "$this$HudCard");
                    if ((i3 & 17) != 16 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(654990159, i3, -1, "com.hermes.android.ui.OverviewTab.<anonymous> (HermesHudScreen.kt:226)");
                        }
                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null);
                        Arrangement.Horizontal spaceEvenly = Arrangement.INSTANCE.getSpaceEvenly();
                        HermesHudRepository.HudOverview hudOverview2 = hudOverview;
                        ComposerKt.sourceInformationMarkerStart(composer2, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(spaceEvenly, Alignment.Companion.getTop(), composer2, 6);
                        ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
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
                        HermesHudScreenKt.StatCell(StringResources_androidKt.stringResource(R.string.hud_stat_sessions, composer2, 0), String.valueOf(hudOverview2.getTotalSessions()), ForumKt.getForum(Icons.INSTANCE.getDefault()), composer2, 0);
                        HermesHudScreenKt.StatCell(StringResources_androidKt.stringResource(R.string.hud_stat_messages, composer2, 0), String.valueOf(hudOverview2.getTotalMessages()), MessageKt.getMessage(Icons.AutoMirrored.Filled.INSTANCE), composer2, 0);
                        HermesHudScreenKt.StatCell(StringResources_androidKt.stringResource(R.string.hud_stat_tool_calls, composer2, 0), String.valueOf(hudOverview2.getTotalToolCalls()), BuildKt.getBuild(Icons.INSTANCE.getDefault()), composer2, 0);
                        HermesHudScreenKt.StatCell(StringResources_androidKt.stringResource(R.string.hud_stat_skills, composer2, 0), String.valueOf(hudOverview2.getSkillCount()), AutoAwesomeKt.getAutoAwesome(Icons.INSTANCE.getDefault()), composer2, 0);
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
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 48, 0);
            HudCard(StringResources_androidKt.stringResource(R.string.hud_card_api_keys, new Object[]{Integer.valueOf(hudOverview.getApiKeysConfigured().size())}, composerStartRestartGroup, 0), ComposableLambdaKt.rememberComposableLambda(1862908334, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.HermesHudScreenKt.OverviewTab.4
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke((ColumnScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope columnScope, Composer composer2, int i3) {
                    Intrinsics.checkNotNullParameter(columnScope, "$this$HudCard");
                    if ((i3 & 17) != 16 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1862908334, i3, -1, "com.hermes.android.ui.OverviewTab.<anonymous> (HermesHudScreen.kt:236)");
                        }
                        int i4 = 0;
                        if (hudOverview.getApiKeysConfigured().isEmpty()) {
                            composer2.startReplaceGroup(1449222588);
                            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.hud_no_api_keys, composer2, 0), (Modifier) null, HermesHudScreenKt.TextMuted, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 131058);
                            composer2.endReplaceGroup();
                        } else {
                            Composer composer3 = composer2;
                            composer3.startReplaceGroup(1449345999);
                            for (String str : hudOverview.getApiKeysConfigured()) {
                                Modifier modifier = PaddingKt.padding-VpY3zN4$default(Modifier.Companion, 0.0f, Dp.constructor-impl(2), 1, (Object) null);
                                Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                                ComposerKt.sourceInformationMarkerStart(composer3, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer3, 48);
                                ComposerKt.sourceInformationMarkerStart(composer3, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, i4);
                                CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, modifier);
                                Function0 constructor = ComposeUiNode.Companion.getConstructor();
                                ComposerKt.sourceInformationMarkerStart(composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                if (!(composer2.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer2.startReusableNode();
                                if (composer2.getInserting()) {
                                    composer3.createNode(constructor);
                                } else {
                                    composer2.useNode();
                                }
                                Composer composer4 = Updater.constructor-impl(composer2);
                                Updater.set-impl(composer4, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                                Updater.set-impl(composer4, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                                Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                                if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                                    composer4.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                                }
                                Updater.set-impl(composer4, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                                ComposerKt.sourceInformationMarkerStart(composer3, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                                RowScope rowScope = RowScopeInstance.INSTANCE;
                                HermesHudScreenKt.m57StatusDotek8zF_U(HermesHudScreenKt.AccentGreen, composer3, 6);
                                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), composer3, 6);
                                TextKt.Text--4IGK_g(str, (Modifier) null, HermesHudScreenKt.TextSecondary, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, FontFamily.Companion.getMonospace(), 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 130994);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                composer2.endNode();
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                composer3 = composer2;
                                i4 = i4;
                            }
                            composer2.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer2.skipToGroupEnd();
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 48, 0);
            HudCard(StringResources_androidKt.stringResource(R.string.hud_card_memory, composerStartRestartGroup, 0), ComposableLambdaKt.rememberComposableLambda(-1224140787, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.HermesHudScreenKt.OverviewTab.5
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke((ColumnScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope columnScope, Composer composer2, int i3) {
                    Intrinsics.checkNotNullParameter(columnScope, "$this$HudCard");
                    if ((i3 & 17) != 16 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1224140787, i3, -1, "com.hermes.android.ui.OverviewTab.<anonymous> (HermesHudScreen.kt:254)");
                        }
                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null);
                        Arrangement.Horizontal spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                        HermesHudRepository.HudOverview hudOverview2 = hudOverview;
                        ComposerKt.sourceInformationMarkerStart(composer2, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(spaceBetween, Alignment.Companion.getTop(), composer2, 6);
                        ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
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
                        ComposerKt.sourceInformationMarkerStart(composer2, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                        Modifier modifier = Modifier.Companion;
                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer2, 0);
                        ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap2 = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer2, modifier);
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
                        Updater.set-impl(composer4, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                        Updater.set-impl(composer4, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                        Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                        if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                            composer4.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                        }
                        Updater.set-impl(composer4, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
                        ComposerKt.sourceInformationMarkerStart(composer2, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                        ColumnScope columnScope2 = ColumnScopeInstance.INSTANCE;
                        TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.hud_agent_memory, composer2, 0), (Modifier) null, HermesHudScreenKt.TextSecondary, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 131058);
                        TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.hud_memory_entries, new Object[]{Integer.valueOf(hudOverview2.getMemoryEntries())}, composer2, 0), (Modifier) null, HermesHudScreenKt.TextPrimary, TextUnitKt.getSp(15), (FontStyle) null, FontWeight.Companion.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 200064, 0, 131026);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        composer2.endNode();
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        HermesHudScreenKt.CapacityBar(hudOverview2.getMemoryCapacityPct(), composer2, 0);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        composer2.endNode();
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        if (hudOverview.getUserEntries() > 0) {
                            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(6)), composer2, 6);
                            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.hud_user_profile_entries, new Object[]{Integer.valueOf(hudOverview.getUserEntries())}, composer2, 0), (Modifier) null, HermesHudScreenKt.TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 131058);
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer2.skipToGroupEnd();
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 48, 0);
            composerStartRestartGroup.startReplaceGroup(-1495149766);
            if (hudOverview.getSoulSummary().length() > 0) {
                HudCard(StringResources_androidKt.stringResource(R.string.hud_card_soul, composerStartRestartGroup, 0), ComposableLambdaKt.rememberComposableLambda(-20795052, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.HermesHudScreenKt.OverviewTab.6
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                        invoke((ColumnScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope columnScope, Composer composer2, int i3) {
                        Intrinsics.checkNotNullParameter(columnScope, "$this$HudCard");
                        if ((i3 & 17) == 16 && composer2.getSkipping()) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-20795052, i3, -1, "com.hermes.android.ui.OverviewTab.<anonymous> (HermesHudScreen.kt:270)");
                        }
                        TextKt.Text--4IGK_g(hudOverview.getSoulSummary(), (Modifier) null, HermesHudScreenKt.TextSecondary, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(18), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 6, 130034);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, 48, 0);
            }
            composerStartRestartGroup.endReplaceGroup();
            HudCard(StringResources_androidKt.stringResource(R.string.hud_card_services, composerStartRestartGroup, 0), ComposableLambdaKt.rememberComposableLambda(-16222612, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.HermesHudScreenKt.OverviewTab.7
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke((ColumnScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope columnScope, Composer composer2, int i3) {
                    String strStringResource;
                    Intrinsics.checkNotNullParameter(columnScope, "$this$HudCard");
                    if ((i3 & 17) != 16 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-16222612, i3, -1, "com.hermes.android.ui.OverviewTab.<anonymous> (HermesHudScreen.kt:276)");
                        }
                        Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                        HermesHudRepository.HudOverview hudOverview2 = hudOverview;
                        ComposerKt.sourceInformationMarkerStart(composer2, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                        Modifier modifier = Modifier.Companion;
                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer2, 48);
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
                        HermesHudScreenKt.m57StatusDotek8zF_U(hudOverview2.getGatewayAlive() ? HermesHudScreenKt.AccentGreen : HermesHudScreenKt.TextMuted, composer2, 0);
                        float f = 8;
                        SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f)), composer2, 6);
                        if (hudOverview2.getGatewayAlive()) {
                            composer2.startReplaceGroup(943046951);
                            strStringResource = StringResources_androidKt.stringResource(R.string.hud_telegram_running, composer2, 0);
                            composer2.endReplaceGroup();
                        } else {
                            composer2.startReplaceGroup(943049096);
                            strStringResource = StringResources_androidKt.stringResource(R.string.hud_telegram_inactive, composer2, 0);
                            composer2.endReplaceGroup();
                        }
                        TextKt.Text--4IGK_g(strStringResource, (Modifier) null, HermesHudScreenKt.TextSecondary, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 131058);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        composer2.endNode();
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(4)), composer2, 6);
                        Alignment.Vertical centerVertically2 = Alignment.Companion.getCenterVertically();
                        HermesHudRepository.HudOverview hudOverview3 = hudOverview;
                        ComposerKt.sourceInformationMarkerStart(composer2, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                        Modifier modifier2 = Modifier.Companion;
                        MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically2, composer2, 48);
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
                        Updater.set-impl(composer4, measurePolicyRowMeasurePolicy2, ComposeUiNode.Companion.getSetMeasurePolicy());
                        Updater.set-impl(composer4, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                        Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                        if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                            composer4.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                        }
                        Updater.set-impl(composer4, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
                        ComposerKt.sourceInformationMarkerStart(composer2, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                        RowScope rowScope2 = RowScopeInstance.INSTANCE;
                        HermesHudScreenKt.m57StatusDotek8zF_U(hudOverview3.getCronActiveCount() > 0 ? HermesHudScreenKt.AccentGreen : HermesHudScreenKt.TextMuted, composer2, 0);
                        SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f)), composer2, 6);
                        TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.hud_cron_status, new Object[]{Integer.valueOf(hudOverview3.getCronActiveCount()), Integer.valueOf(hudOverview3.getCronJobCount())}, composer2, 0), (Modifier) null, HermesHudScreenKt.TextSecondary, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 131058);
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
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 48, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup2 != null) {
            scopeUpdateScopeEndRestartGroup2.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda17
                public final Object invoke(Object obj, Object obj2) {
                    return HermesHudScreenKt.OverviewTab$lambda$35(hudOverview, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void SessionsTab(final List<HermesHudRepository.SessionInfo> list, final HermesHudRepository hermesHudRepository, Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(-311881540);
        int i2 = (i & 6) == 0 ? (composerStartRestartGroup.changedInstance(list) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(hermesHudRepository) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-311881540, i2, -1, "com.hermes.android.ui.SessionsTab (HermesHudScreen.kt:300)");
            }
            composerStartRestartGroup.startReplaceGroup(-1275071997);
            if (list.isEmpty()) {
                EmptyState(StringResources_androidKt.stringResource(R.string.hud_no_sessions, composerStartRestartGroup, 0), composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda7
                        public final Object invoke(Object obj, Object obj2) {
                            return HermesHudScreenKt.SessionsTab$lambda$36(list, hermesHudRepository, i, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    });
                    return;
                }
                return;
            }
            composerStartRestartGroup.endReplaceGroup();
            for (final HermesHudRepository.SessionInfo sessionInfo : list) {
                HudCard(null, ComposableLambdaKt.rememberComposableLambda(-608514988, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.HermesHudScreenKt$SessionsTab$2$1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                        invoke((ColumnScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope columnScope, Composer composer2, int i3) {
                        Intrinsics.checkNotNullParameter(columnScope, "$this$HudCard");
                        if ((i3 & 17) != 16 || !composer2.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-608514988, i3, -1, "com.hermes.android.ui.SessionsTab.<anonymous>.<anonymous> (HermesHudScreen.kt:308)");
                            }
                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null);
                            Arrangement.Horizontal spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                            HermesHudRepository.SessionInfo sessionInfo2 = sessionInfo;
                            HermesHudRepository hermesHudRepository2 = hermesHudRepository;
                            ComposerKt.sourceInformationMarkerStart(composer2, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(spaceBetween, Alignment.Companion.getTop(), composer2, 6);
                            ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                            CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
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
                            Modifier modifierWeight$default = RowScope.weight$default(RowScopeInstance.INSTANCE, Modifier.Companion, 1.0f, false, 2, (Object) null);
                            ComposerKt.sourceInformationMarkerStart(composer2, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer2, 0);
                            ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                            CompositionLocalMap currentCompositionLocalMap2 = composer2.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer2, modifierWeight$default);
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
                            Updater.set-impl(composer4, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                            Updater.set-impl(composer4, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                            Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                            if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                                composer4.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                            }
                            Updater.set-impl(composer4, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
                            ComposerKt.sourceInformationMarkerStart(composer2, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                            ColumnScope columnScope2 = ColumnScopeInstance.INSTANCE;
                            composer2.startReplaceGroup(-672944091);
                            String firstUserMessage = sessionInfo2.getFirstUserMessage();
                            if (firstUserMessage.length() == 0) {
                                firstUserMessage = StringResources_androidKt.stringResource(R.string.hud_untitled, composer2, 0);
                            }
                            composer2.endReplaceGroup();
                            TextKt.Text--4IGK_g(firstUserMessage, (Modifier) null, HermesHudScreenKt.TextPrimary, TextUnitKt.getSp(14), (FontStyle) null, FontWeight.Companion.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, TextOverflow.Companion.getEllipsis-gIe3tQ8(), false, 2, 0, (Function1) null, (TextStyle) null, composer2, 200064, 3120, 120786);
                            TextKt.Text--4IGK_g(hermesHudRepository2.formatSessionTime(sessionInfo2.getSessionStart()) + "  •  " + sessionInfo2.getPlatform() + "  •  " + StringsKt.take(sessionInfo2.getModel(), 20), (Modifier) null, HermesHudScreenKt.TextMuted, TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 131058);
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
                            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(6)), composer2, 6);
                            Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null);
                            Arrangement.Horizontal spaceEvenly = Arrangement.INSTANCE.getSpaceEvenly();
                            HermesHudRepository.SessionInfo sessionInfo3 = sessionInfo;
                            ComposerKt.sourceInformationMarkerStart(composer2, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                            MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(spaceEvenly, Alignment.Companion.getTop(), composer2, 6);
                            ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                            CompositionLocalMap currentCompositionLocalMap3 = composer2.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default2);
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
                            RowScope rowScope = RowScopeInstance.INSTANCE;
                            HermesHudScreenKt.MiniStat(StringResources_androidKt.stringResource(R.string.hud_mini_msgs, composer2, 0), String.valueOf(sessionInfo3.getMessageCount()), composer2, 0);
                            HermesHudScreenKt.MiniStat(StringResources_androidKt.stringResource(R.string.hud_mini_tools, composer2, 0), String.valueOf(sessionInfo3.getToolCallCount()), composer2, 0);
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
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup2 != null) {
            scopeUpdateScopeEndRestartGroup2.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda8
                public final Object invoke(Object obj, Object obj2) {
                    return HermesHudScreenKt.SessionsTab$lambda$38(list, hermesHudRepository, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void ToolsTab(final List<HermesHudRepository.ToolUsage> list, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1607903351);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(list) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i2 & 3) != 2 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1607903351, i2, -1, "com.hermes.android.ui.ToolsTab (HermesHudScreen.kt:333)");
            }
            composerStartRestartGroup.startReplaceGroup(-937230753);
            if (list.isEmpty()) {
                EmptyState(StringResources_androidKt.stringResource(R.string.hud_no_tools, composerStartRestartGroup, 0), composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda11
                        public final Object invoke(Object obj, Object obj2) {
                            return HermesHudScreenKt.ToolsTab$lambda$39(list, i, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    });
                    return;
                }
                return;
            }
            composerStartRestartGroup.endReplaceGroup();
            HudCard(StringResources_androidKt.stringResource(R.string.hud_card_most_used_tools, composerStartRestartGroup, 0), ComposableLambdaKt.rememberComposableLambda(-1319962018, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.HermesHudScreenKt.ToolsTab.2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke((ColumnScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope columnScope, Composer composer2, int i3) {
                    Composer composer3 = composer2;
                    Intrinsics.checkNotNullParameter(columnScope, "$this$HudCard");
                    if ((i3 & 17) != 16 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1319962018, i3, -1, "com.hermes.android.ui.ToolsTab.<anonymous> (HermesHudScreen.kt:340)");
                        }
                        HermesHudRepository.ToolUsage toolUsage = (HermesHudRepository.ToolUsage) CollectionsKt.firstOrNull(list);
                        int i4 = 1;
                        int count = toolUsage != null ? toolUsage.getCount() : 1;
                        int i5 = 0;
                        int i6 = 0;
                        for (Object obj : list) {
                            int i7 = i6 + 1;
                            if (i6 < 0) {
                                CollectionsKt.throwIndexOverflow();
                            }
                            HermesHudRepository.ToolUsage toolUsage2 = (HermesHudRepository.ToolUsage) obj;
                            float f = 4;
                            Modifier modifier = PaddingKt.padding-VpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, i4, (Object) null), 0.0f, Dp.constructor-impl(f), i4, (Object) null);
                            Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                            ComposerKt.sourceInformationMarkerStart(composer3, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer3, 48);
                            ComposerKt.sourceInformationMarkerStart(composer3, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, i5);
                            CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, modifier);
                            Function0 constructor = ComposeUiNode.Companion.getConstructor();
                            int i8 = count;
                            ComposerKt.sourceInformationMarkerStart(composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                            if (!(composer2.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            composer2.startReusableNode();
                            if (composer2.getInserting()) {
                                composer3.createNode(constructor);
                            } else {
                                composer2.useNode();
                            }
                            Composer composer4 = Updater.constructor-impl(composer2);
                            Updater.set-impl(composer4, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                            Updater.set-impl(composer4, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                            Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                            if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                                composer4.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                            }
                            Updater.set-impl(composer4, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                            ComposerKt.sourceInformationMarkerStart(composer3, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                            RowScope rowScope = RowScopeInstance.INSTANCE;
                            TextKt.Text--4IGK_g(i7 + ".", SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(24)), HermesHudScreenKt.TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3504, 0, 131056);
                            TextKt.Text--4IGK_g(toolUsage2.getName(), RowScope.weight$default(rowScope, Modifier.Companion, 1.0f, false, 2, (Object) null), HermesHudScreenKt.TextPrimary, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, FontFamily.Companion.getMonospace(), 0L, (TextDecoration) null, (TextAlign) null, 0L, TextOverflow.Companion.getEllipsis-gIe3tQ8(), false, 1, 0, (Function1) null, (TextStyle) null, composer2, 3456, 3120, 120752);
                            float f2 = 8;
                            SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f2)), composer2, 6);
                            Modifier modifier2 = BackgroundKt.background-bw27NRU(SizeKt.height-3ABfNKs(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(80)), Dp.constructor-impl(f2)), Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.08f, 0.0f, 0.0f, 0.0f, 14, (Object) null), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f)));
                            ComposerKt.sourceInformationMarkerStart(composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
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
                            Composer composer5 = Updater.constructor-impl(composer2);
                            Updater.set-impl(composer5, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                            Updater.set-impl(composer5, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                            Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                            if (composer5.getInserting() || !Intrinsics.areEqual(composer5.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                composer5.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                                composer5.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                            }
                            Updater.set-impl(composer5, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
                            ComposerKt.sourceInformationMarkerStart(composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                            BoxScope boxScope = BoxScopeInstance.INSTANCE;
                            BoxKt.Box(BackgroundKt.background-bw27NRU(SizeKt.fillMaxWidth(SizeKt.fillMaxHeight$default(Modifier.Companion, 0.0f, 1, (Object) null), toolUsage2.getCount() / i8), HermesHudScreenKt.Accent, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f))), composer2, 0);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            composer2.endNode();
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f2)), composer2, 6);
                            TextKt.Text--4IGK_g(String.valueOf(toolUsage2.getCount()), (Modifier) null, HermesHudScreenKt.TextSecondary, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, FontFamily.Companion.getMonospace(), 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 130994);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            composer2.endNode();
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            composer3 = composer2;
                            count = i8;
                            i4 = 1;
                            i5 = 0;
                            i6 = i7;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer2.skipToGroupEnd();
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 48, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup2 != null) {
            scopeUpdateScopeEndRestartGroup2.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda12
                public final Object invoke(Object obj, Object obj2) {
                    return HermesHudScreenKt.ToolsTab$lambda$40(list, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:78:0x023a  */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final void MemoryTab(final List<HermesHudRepository.MemoryEntry> list, final HermesHudRepository.HudOverview hudOverview, Composer composer, final int i) {
        Iterator it;
        String strStringResource;
        Composer composerStartRestartGroup = composer.startRestartGroup(-481407549);
        int i2 = (i & 6) == 0 ? (composerStartRestartGroup.changedInstance(list) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(hudOverview) ? 32 : 16;
        }
        if ((i2 & 19) == 18 && composerStartRestartGroup.getSkipping()) {
            composerStartRestartGroup.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-481407549, i2, -1, "com.hermes.android.ui.MemoryTab (HermesHudScreen.kt:385)");
            }
            composerStartRestartGroup.startReplaceGroup(-1225906371);
            ?? r5 = 0;
            if (list.isEmpty()) {
                EmptyState(StringResources_androidKt.stringResource(R.string.hud_no_memory, composerStartRestartGroup, 0), composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda1
                        public final Object invoke(Object obj, Object obj2) {
                            return HermesHudScreenKt.MemoryTab$lambda$41(list, hudOverview, i, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    });
                    return;
                }
                return;
            }
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1225901593);
            if (hudOverview != null) {
                HudCard(StringResources_androidKt.stringResource(R.string.hud_card_capacity, composerStartRestartGroup, 0), ComposableLambdaKt.rememberComposableLambda(1233017401, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.HermesHudScreenKt$MemoryTab$2$1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                        invoke((ColumnScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope columnScope, Composer composer2, int i3) {
                        Intrinsics.checkNotNullParameter(columnScope, "$this$HudCard");
                        if ((i3 & 17) != 16 || !composer2.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1233017401, i3, -1, "com.hermes.android.ui.MemoryTab.<anonymous>.<anonymous> (HermesHudScreen.kt:394)");
                            }
                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null);
                            Arrangement.Horizontal spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                            HermesHudRepository.HudOverview hudOverview2 = hudOverview;
                            ComposerKt.sourceInformationMarkerStart(composer2, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(spaceBetween, Alignment.Companion.getTop(), composer2, 6);
                            ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                            CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
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
                            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.hud_memory_entries, new Object[]{Integer.valueOf(hudOverview2.getMemoryEntries())}, composer2, 0), (Modifier) null, HermesHudScreenKt.TextPrimary, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 131058);
                            HermesHudScreenKt.CapacityBar(hudOverview2.getMemoryCapacityPct(), composer2, 0);
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
                }, composerStartRestartGroup, 54), composerStartRestartGroup, 48, 0);
                Unit unit = Unit.INSTANCE;
            }
            composerStartRestartGroup.endReplaceGroup();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : list) {
                String category = ((HermesHudRepository.MemoryEntry) obj).getCategory();
                Object obj2 = linkedHashMap.get(category);
                if (obj2 == null) {
                    obj2 = (List) new ArrayList();
                    linkedHashMap.put(category, obj2);
                }
                ((List) obj2).add(obj);
            }
            List listListOf = CollectionsKt.listOf(new String[]{"correction", "environment", "project", "todo", "preference", "other"});
            Map mapMapOf = MapsKt.mapOf(new Pair[]{TuplesKt.to("correction", WarningKt.getWarning(Icons.INSTANCE.getDefault())), TuplesKt.to("environment", ComputerKt.getComputer(Icons.INSTANCE.getDefault())), TuplesKt.to("project", FolderKt.getFolder(Icons.INSTANCE.getDefault())), TuplesKt.to("todo", CheckBoxKt.getCheckBox(Icons.INSTANCE.getDefault())), TuplesKt.to("preference", TuneKt.getTune(Icons.INSTANCE.getDefault())), TuplesKt.to("other", NotesKt.getNotes(Icons.AutoMirrored.Filled.INSTANCE))});
            Iterator it2 = listListOf.iterator();
            while (it2.hasNext()) {
                String str = (String) it2.next();
                List list2 = (List) linkedHashMap.get(str);
                if (list2 == null) {
                    it = it2;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1158125269);
                    Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                    it = it2;
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        MutableState mutableStateMutableStateOf$default = SnapshotStateKt.mutableStateOf$default(Boolean.valueOf((boolean) r5), (SnapshotMutationPolicy) null, 2, (Object) null);
                        composerStartRestartGroup.updateRememberedValue(mutableStateMutableStateOf$default);
                        objRememberedValue = mutableStateMutableStateOf$default;
                    }
                    MutableState mutableState = (MutableState) objRememberedValue;
                    composerStartRestartGroup.endReplaceGroup();
                    switch (str.hashCode()) {
                        case -1459831589:
                            if (str.equals("preference")) {
                                composerStartRestartGroup.startReplaceGroup(1158137150);
                                strStringResource = StringResources_androidKt.stringResource(R.string.hud_cat_preference, composerStartRestartGroup, (int) r5);
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(1158139193);
                                strStringResource = StringResources_androidKt.stringResource(R.string.hud_cat_other, composerStartRestartGroup, (int) r5);
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            break;
                        case -309310695:
                            if (str.equals("project")) {
                                composerStartRestartGroup.startReplaceGroup(1158133019);
                                strStringResource = StringResources_androidKt.stringResource(R.string.hud_cat_project, composerStartRestartGroup, (int) r5);
                                composerStartRestartGroup.endReplaceGroup();
                                break;
                            }
                            break;
                        case -85904877:
                            if (str.equals("environment")) {
                                composerStartRestartGroup.startReplaceGroup(1158130783);
                                strStringResource = StringResources_androidKt.stringResource(R.string.hud_cat_environment, composerStartRestartGroup, (int) r5);
                                composerStartRestartGroup.endReplaceGroup();
                                break;
                            }
                            break;
                        case 3565638:
                            if (str.equals("todo")) {
                                composerStartRestartGroup.startReplaceGroup(1158135032);
                                strStringResource = StringResources_androidKt.stringResource(R.string.hud_cat_todo, composerStartRestartGroup, (int) r5);
                                composerStartRestartGroup.endReplaceGroup();
                                break;
                            }
                            break;
                        case 1155669854:
                            if (str.equals("correction")) {
                                composerStartRestartGroup.startReplaceGroup(1158128446);
                                strStringResource = StringResources_androidKt.stringResource(R.string.hud_cat_correction, composerStartRestartGroup, (int) r5);
                                composerStartRestartGroup.endReplaceGroup();
                                break;
                            }
                            break;
                    }
                    HudCard(null, ComposableLambdaKt.rememberComposableLambda(-601676952, true, new HermesHudScreenKt$MemoryTab$3$1(mutableState, mapMapOf, str, strStringResource, list2), composerStartRestartGroup, 54), composerStartRestartGroup, 48, 1);
                }
                it2 = it;
                r5 = 0;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup2 != null) {
            scopeUpdateScopeEndRestartGroup2.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda2
                public final Object invoke(Object obj3, Object obj4) {
                    return HermesHudScreenKt.MemoryTab$lambda$48(list, hudOverview, i, (Composer) obj3, ((Integer) obj4).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean MemoryTab$lambda$47$lambda$45(MutableState<Boolean> mutableState) {
        return ((Boolean) ((State) mutableState).getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void MemoryTab$lambda$47$lambda$46(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    private static final void CronTab(final List<HermesHudRepository.CronJob> list, Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(1351815002);
        int i2 = (i & 6) == 0 ? (composerStartRestartGroup.changedInstance(list) ? 4 : 2) | i : i;
        if ((i2 & 3) != 2 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1351815002, i2, -1, "com.hermes.android.ui.CronTab (HermesHudScreen.kt:466)");
            }
            composerStartRestartGroup.startReplaceGroup(902076426);
            if (list.isEmpty()) {
                EmptyState(StringResources_androidKt.stringResource(R.string.hud_no_cron, composerStartRestartGroup, 0), composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda13
                        public final Object invoke(Object obj, Object obj2) {
                            return HermesHudScreenKt.CronTab$lambda$49(list, i, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    });
                    return;
                }
                return;
            }
            composerStartRestartGroup.endReplaceGroup();
            for (final HermesHudRepository.CronJob cronJob : list) {
                HudCard(null, ComposableLambdaKt.rememberComposableLambda(-661873443, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.HermesHudScreenKt$CronTab$2$1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                        invoke((ColumnScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope columnScope, Composer composer2, int i3) {
                        long j;
                        Intrinsics.checkNotNullParameter(columnScope, "$this$HudCard");
                        if ((i3 & 17) != 16 || !composer2.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-661873443, i3, -1, "com.hermes.android.ui.CronTab.<anonymous>.<anonymous> (HermesHudScreen.kt:474)");
                            }
                            Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                            HermesHudRepository.CronJob cronJob2 = cronJob;
                            ComposerKt.sourceInformationMarkerStart(composer2, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                            Modifier modifier = Modifier.Companion;
                            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer2, 48);
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
                            if (!cronJob2.getEnabled()) {
                                j = HermesHudScreenKt.TextMuted;
                            } else {
                                j = Intrinsics.areEqual(cronJob2.getState(), "running") ? HermesHudScreenKt.AccentAmber : HermesHudScreenKt.AccentGreen;
                            }
                            HermesHudScreenKt.m57StatusDotek8zF_U(j, composer2, 0);
                            SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), composer2, 6);
                            Modifier modifierWeight$default = RowScope.weight$default(rowScope, Modifier.Companion, 1.0f, false, 2, (Object) null);
                            ComposerKt.sourceInformationMarkerStart(composer2, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer2, 0);
                            ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                            CompositionLocalMap currentCompositionLocalMap2 = composer2.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer2, modifierWeight$default);
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
                            Updater.set-impl(composer4, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                            Updater.set-impl(composer4, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                            Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                            if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                                composer4.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                            }
                            Updater.set-impl(composer4, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
                            ComposerKt.sourceInformationMarkerStart(composer2, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                            ColumnScope columnScope2 = ColumnScopeInstance.INSTANCE;
                            String name = cronJob2.getName();
                            if (name.length() == 0) {
                                name = cronJob2.getId();
                            }
                            TextKt.Text--4IGK_g(name, (Modifier) null, HermesHudScreenKt.TextPrimary, TextUnitKt.getSp(14), (FontStyle) null, FontWeight.Companion.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 200064, 0, 131026);
                            composer2.startReplaceGroup(-488583351);
                            if (cronJob2.getSchedule().length() > 0) {
                                TextKt.Text--4IGK_g(cronJob2.getSchedule(), (Modifier) null, HermesHudScreenKt.TextMuted, TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 131058);
                            }
                            composer2.endReplaceGroup();
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            composer2.endNode();
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            composer2.startReplaceGroup(311942430);
                            String state = cronJob2.getState();
                            if (state.length() == 0) {
                                if (cronJob2.getEnabled()) {
                                    composer2.startReplaceGroup(-488575250);
                                    state = StringResources_androidKt.stringResource(R.string.hud_cron_scheduled, composer2, 0);
                                    composer2.endReplaceGroup();
                                } else {
                                    composer2.startReplaceGroup(-488572917);
                                    state = StringResources_androidKt.stringResource(R.string.hud_cron_paused, composer2, 0);
                                    composer2.endReplaceGroup();
                                }
                            }
                            composer2.endReplaceGroup();
                            TextKt.Text--4IGK_g(state, (Modifier) null, HermesHudScreenKt.TextSecondary, TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, FontFamily.Companion.getMonospace(), 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 130994);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            composer2.endNode();
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            composer2.startReplaceGroup(-64735582);
                            if (cronJob.getPrompt().length() > 0) {
                                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(6)), composer2, 6);
                                TextKt.Text--4IGK_g(StringsKt.take(cronJob.getPrompt(), 150), (Modifier) null, HermesHudScreenKt.TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(16), TextOverflow.Companion.getEllipsis-gIe3tQ8(), false, 2, 0, (Function1) null, (TextStyle) null, composer2, 3456, 3126, 119794);
                            }
                            composer2.endReplaceGroup();
                            if (cronJob.getLastRunAt().length() > 0 || cronJob.getLastStatus().length() > 0) {
                                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(4)), composer2, 6);
                                int i4 = R.string.hud_cron_last;
                                String lastRunAt = cronJob.getLastRunAt();
                                if (lastRunAt.length() == 0) {
                                    lastRunAt = "—";
                                }
                                String lastStatus = cronJob.getLastStatus();
                                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(i4, new Object[]{lastRunAt, lastStatus.length() != 0 ? lastStatus : "—"}, composer2, 0), (Modifier) null, HermesHudScreenKt.TextMuted, TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 131058);
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer2.skipToGroupEnd();
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, 48, 1);
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup2 != null) {
            scopeUpdateScopeEndRestartGroup2.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda14
                public final Object invoke(Object obj, Object obj2) {
                    return HermesHudScreenKt.CronTab$lambda$51(list, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void HudCard(String str, final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function3, Composer composer, final int i, final int i2) {
        final String str2;
        int i3;
        Composer composer2;
        int i4;
        int i5;
        Composer composerStartRestartGroup = composer.startRestartGroup(193489863);
        int i6 = i2 & 1;
        if (i6 != 0) {
            i3 = i | 6;
            str2 = str;
        } else if ((i & 6) == 0) {
            str2 = str;
            i3 = (composerStartRestartGroup.changed(str2) ? 4 : 2) | i;
        } else {
            str2 = str;
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(function3) ? 32 : 16;
        }
        int i7 = i3;
        if ((i7 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            String str3 = i6 != 0 ? null : str2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(193489863, i7, -1, "com.hermes.android.ui.HudCard (HermesHudScreen.kt:526)");
            }
            float f = 12;
            Modifier modifier = PaddingKt.padding-3ABfNKs(BorderKt.border-xT4_qwU(BackgroundKt.background-bw27NRU(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), CardBg, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f))), Dp.constructor-impl(1), CardBorder, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f))), Dp.constructor-impl(14));
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
            composerStartRestartGroup.startReplaceGroup(2022071972);
            if (str3 != null) {
                i5 = i7;
                TextKt.Text--4IGK_g(str3, (Modifier) null, TextMuted, TextUnitKt.getSp(11), (FontStyle) null, FontWeight.Companion.getSemiBold(), (FontFamily) null, TextUnitKt.getSp(0.8d), (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composerStartRestartGroup, (i7 & 14) | 12782976, 0, 130898);
                i4 = 6;
                composer2 = composerStartRestartGroup;
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), composer2, 6);
            } else {
                composer2 = composerStartRestartGroup;
                i4 = 6;
                i5 = i7;
            }
            composer2.endReplaceGroup();
            function3.invoke(columnScope, composer2, Integer.valueOf((i5 & 112) | i4));
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            str2 = str3;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda4
                public final Object invoke(Object obj, Object obj2) {
                    return HermesHudScreenKt.HudCard$lambda$53(str2, function3, i, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void StatCell(final String str, final String str2, final ImageVector imageVector, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1652038547);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(str2) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changed(imageVector) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1652038547, i3, -1, "com.hermes.android.ui.StatCell (HermesHudScreen.kt:549)");
            }
            Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            Modifier modifier = Modifier.Companion;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, composerStartRestartGroup, 48);
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
            IconKt.Icon-ww6aTOc(imageVector, (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(20)), Accent, composerStartRestartGroup, ((i3 >> 6) & 14) | 3504, 0);
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(4)), composerStartRestartGroup, 6);
            composer2 = composerStartRestartGroup;
            TextKt.Text--4IGK_g(str2, (Modifier) null, TextPrimary, TextUnitKt.getSp(16), (FontStyle) null, FontWeight.Companion.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, ((i3 >> 3) & 14) | 200064, 0, 131026);
            TextKt.Text--4IGK_g(str, (Modifier) null, TextMuted, TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, (i3 & 14) | 3456, 0, 131058);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda6
                public final Object invoke(Object obj, Object obj2) {
                    return HermesHudScreenKt.StatCell$lambda$55(str, str2, imageVector, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void MiniStat(final String str, final String str2, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1654156042);
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
                ComposerKt.traceEventStart(1654156042, i3, -1, "com.hermes.android.ui.MiniStat (HermesHudScreen.kt:559)");
            }
            Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            Modifier modifier = Modifier.Companion;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, composerStartRestartGroup, 48);
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
            TextKt.Text--4IGK_g(str2, (Modifier) null, TextPrimary, TextUnitKt.getSp(13), (FontStyle) null, FontWeight.Companion.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, ((i3 >> 3) & 14) | 200064, 0, 131026);
            TextKt.Text--4IGK_g(str, (Modifier) null, TextMuted, TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, (i3 & 14) | 3456, 0, 131058);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda0
                public final Object invoke(Object obj, Object obj2) {
                    return HermesHudScreenKt.MiniStat$lambda$57(str, str2, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: StatusDot-ek8zF_U, reason: not valid java name */
    public static final void m57StatusDotek8zF_U(final long j, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1324273635);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i2 & 3) != 2 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1324273635, i2, -1, "com.hermes.android.ui.StatusDot (HermesHudScreen.kt:567)");
            }
            BoxKt.Box(BackgroundKt.background-bw27NRU$default(ClipKt.clip(SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), RoundedCornerShapeKt.getCircleShape()), j, (Shape) null, 2, (Object) null), composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda3
                public final Object invoke(Object obj, Object obj2) {
                    return HermesHudScreenKt.StatusDot_ek8zF_U$lambda$58(j, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void CapacityBar(final int i, Composer composer, final int i2) {
        int i3;
        long j;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(144591829);
        if ((i2 & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(i) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i3 & 3) != 2 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(144591829, i3, -1, "com.hermes.android.ui.CapacityBar (HermesHudScreen.kt:577)");
            }
            Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
            Modifier modifier = Modifier.Companion;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composerStartRestartGroup, 48);
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
            Updater.set-impl(composer3, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer3, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer3.getInserting() || !Intrinsics.areEqual(composer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                composer3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                composer3.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.set-impl(composer3, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -407840262, "C101@5126L9:Row.kt#2w3rfo");
            RowScope rowScope = RowScopeInstance.INSTANCE;
            float f = 6;
            float f2 = 3;
            Modifier modifier2 = BackgroundKt.background-bw27NRU(SizeKt.height-3ABfNKs(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(60)), Dp.constructor-impl(f)), Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.08f, 0.0f, 0.0f, 0.0f, 14, (Object) null), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f2)));
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier2);
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
            Composer composer4 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer4, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer4, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                composer4.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
            }
            Updater.set-impl(composer4, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScope boxScope = BoxScopeInstance.INSTANCE;
            Modifier modifierFillMaxWidth = SizeKt.fillMaxWidth(SizeKt.fillMaxHeight$default(Modifier.Companion, 0.0f, 1, (Object) null), RangesKt.coerceIn(i, 0, 100) / 100.0f);
            if (i >= 90) {
                j = AccentRed;
            } else if (i >= 70) {
                j = AccentAmber;
            } else {
                j = AccentGreen;
            }
            BoxKt.Box(BackgroundKt.background-bw27NRU(modifierFillMaxWidth, j, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f2))), composerStartRestartGroup, 0);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.endNode();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f)), composerStartRestartGroup, 6);
            composer2 = composerStartRestartGroup;
            TextKt.Text--4IGK_g(i + "%", (Modifier) null, TextSecondary, TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, FontFamily.Companion.getMonospace(), 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 130994);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda5
                public final Object invoke(Object obj, Object obj2) {
                    return HermesHudScreenKt.CapacityBar$lambda$61(i, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void EmptyState(final String str, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-351953600);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i2 & 3) != 2 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-351953600, i2, -1, "com.hermes.android.ui.EmptyState (HermesHudScreen.kt:605)");
            }
            float f = 48;
            Modifier modifier = PaddingKt.padding-VpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), 0.0f, Dp.constructor-impl(f), 1, (Object) null);
            Alignment center = Alignment.Companion.getCenter();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
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
            Updater.set-impl(composer3, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer3, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer3.getInserting() || !Intrinsics.areEqual(composer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                composer3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                composer3.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.set-impl(composer3, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScope boxScope = BoxScopeInstance.INSTANCE;
            Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            Modifier modifier2 = Modifier.Companion;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, composerStartRestartGroup, 48);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier2);
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
            Composer composer4 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer4, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer4, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                composer4.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
            }
            Updater.set-impl(composer4, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -384784025, "C88@4444L9:Column.kt#2w3rfo");
            ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
            ImageVector inbox = InboxKt.getInbox(Icons.INSTANCE.getDefault());
            long j = TextMuted;
            IconKt.Icon-ww6aTOc(inbox, (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f)), j, composerStartRestartGroup, 3504, 0);
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(12)), composerStartRestartGroup, 6);
            composer2 = composerStartRestartGroup;
            TextKt.Text--4IGK_g(str, (Modifier) null, j, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, (14 & i2) | 3456, 0, 131058);
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
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.HermesHudScreenKt$$ExternalSyntheticLambda15
                public final Object invoke(Object obj, Object obj2) {
                    return HermesHudScreenKt.EmptyState$lambda$64(str, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
