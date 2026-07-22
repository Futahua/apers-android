package com.hermes.android.ui;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.activity.ComponentActivity;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
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
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.CheckCircleKt;
import androidx.compose.material.icons.outlined.AutoAwesomeKt;
import androidx.compose.material.icons.outlined.ErrorOutlineKt;
import androidx.compose.material.icons.outlined.ImageKt;
import androidx.compose.material.icons.outlined.RecordVoiceOverKt;
import androidx.compose.material.icons.outlined.SpeedKt;
import androidx.compose.material.icons.outlined.TravelExploreKt;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonElevation;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotMutationPolicy;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.ShadowKt;
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
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManager;
import com.google.android.play.core.review.ReviewManagerFactory;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.BootstrapManager;
import com.hermes.android.R;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: EdgeFeaturesSheet.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a@\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172!\u0010\u0018\u001a\u001d\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u00130\u0019H\u0007¢\u0006\u0002\u0010\u001e\u001a'\u0010\u001f\u001a\u00020\u00132\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0003H\u0003¢\u0006\u0004\b$\u0010%\u001a%\u0010&\u001a\u00020\u00132\u0006\u0010 \u001a\u00020!2\u0006\u0010'\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u0001H\u0003¢\u0006\u0002\u0010)\u001a\u001b\u0010*\u001a\u00020\u00132\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00130,H\u0003¢\u0006\u0002\u0010-\u001a\u001d\u0010.\u001a\u00020\u00132\u0006\u0010/\u001a\u00020\u001a2\u0006\u00100\u001a\u00020\u0001H\u0003¢\u0006\u0002\u00101\u001a\r\u00102\u001a\u00020\u0013H\u0003¢\u0006\u0002\u00103\u001a#\u00104\u001a\u00020\u00132\u0006\u00105\u001a\u00020\u00012\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u00130,H\u0003¢\u0006\u0002\u00107\u001a\u0010\u00108\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002\u001aV\u00109\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010:\u001a\u00020;2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u00130\u00192\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00130\u00192\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00130,H\u0002\u001aN\u0010@\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010:\u001a\u00020;2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u00130\u00192\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00130\u00192\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00130,H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\u0006\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\u0007\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\t\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\n\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\u000b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\f\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\r\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\u000e\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\u000f\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\u0010\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\u0011\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004¨\u0006A²\u0006\n\u0010B\u001a\u00020=X\u008a\u008e\u0002²\u0006\n\u0010C\u001a\u00020\u0001X\u008a\u008e\u0002"}, d2 = {"TAG", BuildConfig.FLAVOR, "BgTop", "Landroidx/compose/ui/graphics/Color;", "J", "BgMid", "BgBottom", "CardBg", "TextPrimary", "TextSecondary", "TextMuted", "AccentDark", "IconChipBg", "HaloBlue", "HaloGreen", "Success", "Danger", "CardShadow", "EdgeFeaturesSheet", BuildConfig.FLAVOR, "bootstrapManager", "Lcom/hermes/android/BootstrapManager;", "activity", "Landroidx/activity/ComponentActivity;", "onDismiss", "Lkotlin/Function1;", BuildConfig.FLAVOR, "Lkotlin/ParameterName;", AppMeasurementSdk.ConditionalUserProperty.NAME, "installed", "(Lcom/hermes/android/BootstrapManager;Landroidx/activity/ComponentActivity;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "HaloIcon", "icon", "Landroidx/compose/ui/graphics/vector/ImageVector;", "haloColor", "iconTint", "HaloIcon-1wkBAMs", "(Landroidx/compose/ui/graphics/vector/ImageVector;JJLandroidx/compose/runtime/Composer;I)V", "FeatureCard", "title", "description", "(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V", "IdleCta", "onClick", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "StatusBlock", "loading", "text", "(ZLjava/lang/String;Landroidx/compose/runtime/Composer;I)V", "DoneBlock", "(Landroidx/compose/runtime/Composer;I)V", "FailedBlock", "message", "onClose", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "isInstalledFromPlayStore", "launchReviewThenInstall", "scope", "Lkotlinx/coroutines/CoroutineScope;", "onStateChange", "Lcom/hermes/android/ui/InstallState;", "onStatus", "onDone", "startEdgeInstall", "app_release", "installState", "statusText"}, k = 2, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class EdgeFeaturesSheetKt {
    private static final String TAG = "EdgeFeatures";
    private static final long BgTop = ColorKt.Color(4286489343L);
    private static final long BgMid = ColorKt.Color(4289050879L);
    private static final long BgBottom = ColorKt.Color(4292140287L);
    private static final long CardBg = Color.Companion.getWhite-0d7_KjU();
    private static final long TextPrimary = ColorKt.Color(4279112224L);
    private static final long TextSecondary = ColorKt.Color(4285232265L);
    private static final long TextMuted = ColorKt.Color(4288324533L);
    private static final long AccentDark = ColorKt.Color(4279309081L);
    private static final long IconChipBg = ColorKt.Color(4293849590L);
    private static final long HaloBlue = ColorKt.Color(4287341311L);
    private static final long HaloGreen = ColorKt.Color(4282365300L);
    private static final long Success = ColorKt.Color(4281313382L);
    private static final long Danger = ColorKt.Color(4293488747L);
    private static final long CardShadow = ColorKt.Color(4279509052L);

    /* JADX INFO: compiled from: EdgeFeaturesSheet.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[InstallState.values().length];
            try {
                iArr[InstallState.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InstallState.REVIEWING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[InstallState.INSTALLING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[InstallState.DONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[InstallState.FAILED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit DoneBlock$lambda$32(int i, Composer composer, int i2) {
        DoneBlock(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
    public static final Unit EdgeFeaturesSheet$lambda$18(BootstrapManager bootstrapManager, ComponentActivity componentActivity, Function1 function1, int i, Composer composer, int i2) throws NoWhenBranchMatchedException {
        EdgeFeaturesSheet(bootstrapManager, componentActivity, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FailedBlock$lambda$37(String str, Function0 function0, int i, Composer composer, int i2) {
        FailedBlock(str, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FeatureCard$lambda$25(ImageVector imageVector, String str, String str2, int i, Composer composer, int i2) {
        FeatureCard(imageVector, str, str2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit HaloIcon_1wkBAMs$lambda$21(ImageVector imageVector, long j, long j2, int i, Composer composer, int i2) {
        m50HaloIcon1wkBAMs(imageVector, j, j2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit IdleCta$lambda$26(Function0 function0, int i, Composer composer, int i2) {
        IdleCta(function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit StatusBlock$lambda$28(boolean z, String str, int i, Composer composer, int i2) {
        StatusBlock(z, str, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
    public static final void EdgeFeaturesSheet(final BootstrapManager bootstrapManager, final ComponentActivity componentActivity, final Function1<? super Boolean, Unit> function1, Composer composer, final int i) throws NoWhenBranchMatchedException {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(bootstrapManager, "bootstrapManager");
        Intrinsics.checkNotNullParameter(componentActivity, "activity");
        Intrinsics.checkNotNullParameter(function1, "onDismiss");
        Composer composerStartRestartGroup = composer.startRestartGroup(-2063611646);
        int i3 = (i & 6) == 0 ? (composerStartRestartGroup.changedInstance(bootstrapManager) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(componentActivity) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(function1) ? 256 : 128;
        }
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2063611646, i3, -1, "com.hermes.android.ui.EdgeFeaturesSheet (EdgeFeaturesSheet.kt:73)");
            }
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 773894976, "CC(rememberCoroutineScope)482@20332L144:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -954367824, "CC(remember):Effects.kt#9igjgp");
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, composerStartRestartGroup));
                composerStartRestartGroup.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
                objRememberedValue = compositionScopedCoroutineScopeCanceller;
            }
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            final CoroutineScope coroutineScope = ((CompositionScopedCoroutineScopeCanceller) objRememberedValue).getCoroutineScope();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.startReplaceGroup(916943443);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = SnapshotStateKt.mutableStateOf$default(InstallState.IDLE, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            final MutableState mutableState = (MutableState) objRememberedValue2;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(916945636);
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                objRememberedValue3 = SnapshotStateKt.mutableStateOf$default(BuildConfig.FLAVOR, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            final MutableState mutableState2 = (MutableState) objRememberedValue3;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(916947845);
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                objRememberedValue4 = CollectionsKt.listOf(new EdgeFeature[]{new EdgeFeature(TravelExploreKt.getTravelExplore(Icons.Outlined.INSTANCE), R.string.edge_web_search, R.string.edge_web_search_desc), new EdgeFeature(SpeedKt.getSpeed(Icons.Outlined.INSTANCE), R.string.edge_parallel, R.string.edge_parallel_desc), new EdgeFeature(ImageKt.getImage(Icons.Outlined.INSTANCE), R.string.edge_image, R.string.edge_image_desc), new EdgeFeature(RecordVoiceOverKt.getRecordVoiceOver(Icons.Outlined.INSTANCE), R.string.edge_tts, R.string.edge_tts_desc)});
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            List list = (List) objRememberedValue4;
            composerStartRestartGroup.endReplaceGroup();
            float f = 28;
            Modifier modifierBackground$default = BackgroundKt.background$default(ClipKt.clip(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), RoundedCornerShapeKt.RoundedCornerShape-a9UjIt4$default(Dp.constructor-impl(f), Dp.constructor-impl(f), 0.0f, 0.0f, 12, (Object) null)), Brush.Companion.verticalGradient-8A-3gB4$default(Brush.Companion, CollectionsKt.listOf(new Color[]{Color.box-impl(BgTop), Color.box-impl(BgMid), Color.box-impl(BgBottom)}), 0.0f, 0.0f, 0, 14, (Object) null), (Shape) null, 0.0f, 6, (Object) null);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
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
            float f2 = 24;
            Modifier modifier = PaddingKt.padding-VpY3zN4(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(f2), Dp.constructor-impl(f2));
            Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, composerStartRestartGroup, 48);
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
            m50HaloIcon1wkBAMs(AutoAwesomeKt.getAutoAwesome(Icons.Outlined.INSTANCE), HaloBlue, AccentDark, composerStartRestartGroup, 432);
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(16)), composerStartRestartGroup, 6);
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.edge_title, composerStartRestartGroup, 0), (Modifier) null, TextPrimary, TextUnitKt.getSp(26), (FontStyle) null, FontWeight.Companion.getSemiBold(), (FontFamily) null, TextUnitKt.getSp(-0.5d), (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composerStartRestartGroup, 200064, 0, 130898);
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(6)), composerStartRestartGroup, 6);
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.edge_subtitle, composerStartRestartGroup, 0), (Modifier) null, TextSecondary, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.box-impl(TextAlign.Companion.getCenter-e0LSkKk()), TextUnitKt.getSp(20), 0, false, 0, 0, (Function1) null, (TextStyle) null, composerStartRestartGroup, 3456, 6, 129522);
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f2)), composerStartRestartGroup, 6);
            composerStartRestartGroup.startReplaceGroup(759859498);
            int i4 = 0;
            for (Object obj : list) {
                int i5 = i4 + 1;
                if (i4 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                EdgeFeature edgeFeature = (EdgeFeature) obj;
                composerStartRestartGroup.startReplaceGroup(759860848);
                if (i4 > 0) {
                    SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(10)), composerStartRestartGroup, 6);
                }
                composerStartRestartGroup.endReplaceGroup();
                FeatureCard(edgeFeature.getIcon(), StringResources_androidKt.stringResource(edgeFeature.getTitleRes(), composerStartRestartGroup, 0), StringResources_androidKt.stringResource(edgeFeature.getDescRes(), composerStartRestartGroup, 0), composerStartRestartGroup, 0);
                i4 = i5;
            }
            composerStartRestartGroup.endReplaceGroup();
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f)), composerStartRestartGroup, 6);
            int i6 = WhenMappings.$EnumSwitchMapping$0[EdgeFeaturesSheet$lambda$1(mutableState).ordinal()];
            if (i6 != 1) {
                if (i6 == 2) {
                    composerStartRestartGroup.startReplaceGroup(759893833);
                    StatusBlock(true, StringResources_androidKt.stringResource(R.string.edge_reviewing, composerStartRestartGroup, 0), composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                    Unit unit = Unit.INSTANCE;
                } else if (i6 == 3) {
                    composerStartRestartGroup.startReplaceGroup(759899585);
                    composerStartRestartGroup.startReplaceGroup(759902263);
                    String strEdgeFeaturesSheet$lambda$4 = EdgeFeaturesSheet$lambda$4(mutableState2);
                    if (StringsKt.isBlank(strEdgeFeaturesSheet$lambda$4)) {
                        strEdgeFeaturesSheet$lambda$4 = StringResources_androidKt.stringResource(R.string.edge_installing, composerStartRestartGroup, 0);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    StatusBlock(true, strEdgeFeaturesSheet$lambda$4, composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                    Unit unit2 = Unit.INSTANCE;
                } else if (i6 == 4) {
                    composerStartRestartGroup.startReplaceGroup(759905742);
                    DoneBlock(composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                    Unit unit3 = Unit.INSTANCE;
                } else {
                    if (i6 != 5) {
                        composerStartRestartGroup.startReplaceGroup(759873712);
                        composerStartRestartGroup.endReplaceGroup();
                        throw new NoWhenBranchMatchedException();
                    }
                    composerStartRestartGroup.startReplaceGroup(759907519);
                    String strEdgeFeaturesSheet$lambda$42 = EdgeFeaturesSheet$lambda$4(mutableState2);
                    composerStartRestartGroup.startReplaceGroup(759910135);
                    boolean z = (i3 & 896) == 256;
                    Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (z || objRememberedValue5 == Composer.Companion.getEmpty()) {
                        objRememberedValue5 = new Function0() { // from class: com.hermes.android.ui.EdgeFeaturesSheetKt$$ExternalSyntheticLambda13
                            public final Object invoke() {
                                return EdgeFeaturesSheetKt.EdgeFeaturesSheet$lambda$17$lambda$16$lambda$15$lambda$14(function1);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    FailedBlock(strEdgeFeaturesSheet$lambda$42, (Function0) objRememberedValue5, composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                    Unit unit4 = Unit.INSTANCE;
                }
                i2 = 6;
                composer2 = composerStartRestartGroup;
            } else {
                composerStartRestartGroup.startReplaceGroup(759874931);
                composerStartRestartGroup.startReplaceGroup(759876121);
                boolean zChangedInstance = composerStartRestartGroup.changedInstance(componentActivity) | composerStartRestartGroup.changedInstance(bootstrapManager) | composerStartRestartGroup.changedInstance(coroutineScope) | ((i3 & 896) == 256);
                Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance || objRememberedValue6 == Composer.Companion.getEmpty()) {
                    i2 = 6;
                    composer2 = composerStartRestartGroup;
                    Function0 function0 = new Function0() { // from class: com.hermes.android.ui.EdgeFeaturesSheetKt$$ExternalSyntheticLambda12
                        public final Object invoke() {
                            return EdgeFeaturesSheetKt.EdgeFeaturesSheet$lambda$17$lambda$16$lambda$12$lambda$11(componentActivity, bootstrapManager, coroutineScope, mutableState, mutableState2, function1);
                        }
                    };
                    composer2.updateRememberedValue(function0);
                    objRememberedValue6 = function0;
                } else {
                    i2 = 6;
                    composer2 = composerStartRestartGroup;
                }
                composer2.endReplaceGroup();
                IdleCta((Function0) objRememberedValue6, composer2, 0);
                composer2.endReplaceGroup();
                Unit unit5 = Unit.INSTANCE;
            }
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(20)), composer2, i2);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.EdgeFeaturesSheetKt$$ExternalSyntheticLambda1
                public final Object invoke(Object obj2, Object obj3) {
                    return EdgeFeaturesSheetKt.EdgeFeaturesSheet$lambda$18(bootstrapManager, componentActivity, function1, i, (Composer) obj2, ((Integer) obj3).intValue());
                }
            });
        }
    }

    private static final InstallState EdgeFeaturesSheet$lambda$1(MutableState<InstallState> mutableState) {
        return (InstallState) ((State) mutableState).getValue();
    }

    private static final String EdgeFeaturesSheet$lambda$4(MutableState<String> mutableState) {
        return (String) ((State) mutableState).getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EdgeFeaturesSheet$lambda$17$lambda$16$lambda$12$lambda$11(ComponentActivity componentActivity, BootstrapManager bootstrapManager, CoroutineScope coroutineScope, final MutableState mutableState, final MutableState mutableState2, final Function1 function1) {
        mutableState.setValue(InstallState.REVIEWING);
        launchReviewThenInstall(componentActivity, bootstrapManager, coroutineScope, new Function1() { // from class: com.hermes.android.ui.EdgeFeaturesSheetKt$$ExternalSyntheticLambda6
            public final Object invoke(Object obj) {
                return EdgeFeaturesSheetKt.EdgeFeaturesSheet$lambda$17$lambda$16$lambda$12$lambda$11$lambda$8(mutableState, (InstallState) obj);
            }
        }, new Function1() { // from class: com.hermes.android.ui.EdgeFeaturesSheetKt$$ExternalSyntheticLambda7
            public final Object invoke(Object obj) {
                return EdgeFeaturesSheetKt.EdgeFeaturesSheet$lambda$17$lambda$16$lambda$12$lambda$11$lambda$9(mutableState2, (String) obj);
            }
        }, new Function0() { // from class: com.hermes.android.ui.EdgeFeaturesSheetKt$$ExternalSyntheticLambda8
            public final Object invoke() {
                return EdgeFeaturesSheetKt.EdgeFeaturesSheet$lambda$17$lambda$16$lambda$12$lambda$11$lambda$10(function1);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EdgeFeaturesSheet$lambda$17$lambda$16$lambda$12$lambda$11$lambda$8(MutableState mutableState, InstallState installState) {
        Intrinsics.checkNotNullParameter(installState, "it");
        mutableState.setValue(installState);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EdgeFeaturesSheet$lambda$17$lambda$16$lambda$12$lambda$11$lambda$9(MutableState mutableState, String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        mutableState.setValue(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EdgeFeaturesSheet$lambda$17$lambda$16$lambda$12$lambda$11$lambda$10(Function1 function1) {
        function1.invoke(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EdgeFeaturesSheet$lambda$17$lambda$16$lambda$15$lambda$14(Function1 function1) {
        function1.invoke(false);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: HaloIcon-1wkBAMs, reason: not valid java name */
    private static final void m50HaloIcon1wkBAMs(final ImageVector imageVector, final long j, final long j2, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(684242328);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(imageVector) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(j) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changed(j2) ? 256 : 128;
        }
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(684242328, i2, -1, "com.hermes.android.ui.HaloIcon (EdgeFeaturesSheet.kt:200)");
            }
            float f = 96;
            Modifier modifier = SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f));
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
            Composer composer2 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer2, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer2, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer2.getInserting() || !Intrinsics.areEqual(composer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                composer2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                composer2.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.set-impl(composer2, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScope boxScope = BoxScopeInstance.INSTANCE;
            BoxKt.Box(BackgroundKt.background$default(SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f)), Brush.Companion.radialGradient-P_Vx-Ks$default(Brush.Companion, CollectionsKt.listOf(new Color[]{Color.box-impl(Color.copy-wmQWz5c$default(j, 0.55f, 0.0f, 0.0f, 0.0f, 14, (Object) null)), Color.box-impl(Color.Companion.getTransparent-0d7_KjU())}), 0L, 0.0f, 0, 14, (Object) null), RoundedCornerShapeKt.getCircleShape(), 0.0f, 4, (Object) null), composerStartRestartGroup, 0);
            Modifier modifier2 = BackgroundKt.background-bw27NRU(SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(60)), Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.95f, 0.0f, 0.0f, 0.0f, 14, (Object) null), RoundedCornerShapeKt.getCircleShape());
            Alignment center2 = Alignment.Companion.getCenter();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(center2, false);
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
            Composer composer3 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer3, measurePolicyMaybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer3, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer3.getInserting() || !Intrinsics.areEqual(composer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                composer3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                composer3.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
            }
            Updater.set-impl(composer3, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScope boxScope2 = BoxScopeInstance.INSTANCE;
            IconKt.Icon-ww6aTOc(imageVector, (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(28)), j2, composerStartRestartGroup, (i2 & 14) | 432 | ((i2 << 3) & 7168), 0);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.endNode();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
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
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.EdgeFeaturesSheetKt$$ExternalSyntheticLambda11
                public final Object invoke(Object obj, Object obj2) {
                    return EdgeFeaturesSheetKt.HaloIcon_1wkBAMs$lambda$21(imageVector, j, j2, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void FeatureCard(final ImageVector imageVector, String str, final String str2, Composer composer, int i) {
        int i2;
        Composer composer2;
        final int i3;
        final String str3;
        Composer composerStartRestartGroup = composer.startRestartGroup(1755116625);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(imageVector) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(str) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changed(str2) ? 256 : 128;
        }
        int i4 = i2;
        if ((i4 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1755116625, i4, -1, "com.hermes.android.ui.FeatureCard (EdgeFeaturesSheet.kt:237)");
            }
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null);
            float f = 14;
            float f2 = Dp.constructor-impl(f);
            float f3 = 20;
            Shape shape = RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f3));
            long j = CardShadow;
            Modifier modifier = PaddingKt.padding-VpY3zN4(BackgroundKt.background-bw27NRU$default(ClipKt.clip(ShadowKt.shadow-s4CzXII$default(modifierFillMaxWidth$default, f2, shape, false, Color.copy-wmQWz5c$default(j, 0.08f, 0.0f, 0.0f, 0.0f, 14, (Object) null), Color.copy-wmQWz5c$default(j, 0.08f, 0.0f, 0.0f, 0.0f, 14, (Object) null), 4, (Object) null), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f3))), CardBg, (Shape) null, 2, (Object) null), Dp.constructor-impl(16), Dp.constructor-impl(f));
            Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
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
            Modifier modifier2 = BackgroundKt.background-bw27NRU(SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(40)), IconChipBg, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(12)));
            Alignment center = Alignment.Companion.getCenter();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
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
            IconKt.Icon-ww6aTOc(imageVector, (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f3)), AccentDark, composerStartRestartGroup, (i4 & 14) | 3504, 0);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.endNode();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f)), composerStartRestartGroup, 6);
            Modifier modifierWeight$default = RowScope.weight$default(rowScope, Modifier.Companion, 1.0f, false, 2, (Object) null);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composerStartRestartGroup, 0);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierWeight$default);
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
            Updater.set-impl(composer5, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer5, currentCompositionLocalMap3, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash3 = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer5.getInserting() || !Intrinsics.areEqual(composer5.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                composer5.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
                composer5.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
            }
            Updater.set-impl(composer5, modifierMaterializeModifier3, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -384784025, "C88@4444L9:Column.kt#2w3rfo");
            ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
            composer2 = composerStartRestartGroup;
            i3 = i;
            str3 = str;
            TextKt.Text--4IGK_g(str, (Modifier) null, TextPrimary, TextUnitKt.getSp(15), (FontStyle) null, FontWeight.Companion.getSemiBold(), (FontFamily) null, TextUnitKt.getSp(-0.2d), (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, ((i4 >> 3) & 14) | 200064, 0, 130898);
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(2)), composer2, 6);
            TextKt.Text--4IGK_g(str2, (Modifier) null, TextSecondary, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, ((i4 >> 6) & 14) | 3456, 0, 131058);
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
            str3 = str;
            i3 = i;
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.EdgeFeaturesSheetKt$$ExternalSyntheticLambda3
                public final Object invoke(Object obj, Object obj2) {
                    return EdgeFeaturesSheetKt.FeatureCard$lambda$25(imageVector, str3, str2, i3, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void IdleCta(final Function0<Unit> function0, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1993118305);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i2 & 3) != 2 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1993118305, i2, -1, "com.hermes.android.ui.IdleCta (EdgeFeaturesSheet.kt:281)");
            }
            float f = 0;
            ButtonKt.Button(function0, SizeKt.height-3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(56)), false, RoundedCornerShapeKt.getCircleShape(), ButtonDefaults.INSTANCE.buttonColors-ro_MJ88(AccentDark, Color.Companion.getWhite-0d7_KjU(), 0L, 0L, composerStartRestartGroup, (ButtonDefaults.$stable << 12) | 54, 12), ButtonDefaults.INSTANCE.buttonElevation-R_JCAzs(Dp.constructor-impl(f), Dp.constructor-impl(f), 0.0f, 0.0f, 0.0f, composerStartRestartGroup, (ButtonDefaults.$stable << 15) | 54, 28), (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$EdgeFeaturesSheetKt.INSTANCE.m35getLambda1$app_release(), composerStartRestartGroup, (i2 & 14) | 805306416, 452);
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(10)), composerStartRestartGroup, 6);
            composer2 = composerStartRestartGroup;
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.edge_btn_unlock_hint, composerStartRestartGroup, 0), (Modifier) null, TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.box-impl(TextAlign.Companion.getCenter-e0LSkKk()), 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 130546);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.EdgeFeaturesSheetKt$$ExternalSyntheticLambda5
                public final Object invoke(Object obj, Object obj2) {
                    return EdgeFeaturesSheetKt.IdleCta$lambda$26(function0, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void StatusBlock(final boolean z, final String str, Composer composer, final int i) {
        int i2;
        int i3;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-629090353);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(str) ? 32 : 16;
        }
        int i4 = i2;
        if ((i4 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-629090353, i4, -1, "com.hermes.android.ui.StatusBlock (EdgeFeaturesSheet.kt:313)");
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
            composerStartRestartGroup.startReplaceGroup(1902118091);
            if (z) {
                i3 = 14;
                ProgressIndicatorKt.CircularProgressIndicator-LxG7B9w(SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(36)), AccentDark, Dp.constructor-impl(3), 0L, 0, composerStartRestartGroup, 438, 24);
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(14)), composerStartRestartGroup, 6);
            } else {
                i3 = 14;
            }
            composerStartRestartGroup.endReplaceGroup();
            composer2 = composerStartRestartGroup;
            TextKt.Text--4IGK_g(str, (Modifier) null, TextSecondary, TextUnitKt.getSp(i3), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.box-impl(TextAlign.Companion.getCenter-e0LSkKk()), 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, (i3 & (i4 >> 3)) | 3456, 0, 130546);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.EdgeFeaturesSheetKt$$ExternalSyntheticLambda2
                public final Object invoke(Object obj, Object obj2) {
                    return EdgeFeaturesSheetKt.StatusBlock$lambda$28(z, str, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void DoneBlock(Composer composer, final int i) {
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-479783884);
        if (i != 0 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-479783884, i, -1, "com.hermes.android.ui.DoneBlock (EdgeFeaturesSheet.kt:333)");
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
            float f = 80;
            Modifier modifier2 = SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f));
            Alignment center = Alignment.Companion.getCenter();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
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
            BoxKt.Box(BackgroundKt.background$default(SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f)), Brush.Companion.radialGradient-P_Vx-Ks$default(Brush.Companion, CollectionsKt.listOf(new Color[]{Color.box-impl(Color.copy-wmQWz5c$default(HaloGreen, 0.45f, 0.0f, 0.0f, 0.0f, 14, (Object) null)), Color.box-impl(Color.Companion.getTransparent-0d7_KjU())}), 0L, 0.0f, 0, 14, (Object) null), RoundedCornerShapeKt.getCircleShape(), 0.0f, 4, (Object) null), composerStartRestartGroup, 0);
            Modifier modifier3 = BackgroundKt.background-bw27NRU(SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(52)), Color.Companion.getWhite-0d7_KjU(), RoundedCornerShapeKt.getCircleShape());
            Alignment center2 = Alignment.Companion.getCenter();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(center2, false);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
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
            Updater.set-impl(composer5, measurePolicyMaybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer5, currentCompositionLocalMap3, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash3 = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer5.getInserting() || !Intrinsics.areEqual(composer5.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                composer5.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
                composer5.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
            }
            Updater.set-impl(composer5, modifierMaterializeModifier3, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScope boxScope2 = BoxScopeInstance.INSTANCE;
            IconKt.Icon-ww6aTOc(CheckCircleKt.getCheckCircle(Icons.Filled.INSTANCE), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(30)), Success, composerStartRestartGroup, 3504, 0);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.endNode();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.endNode();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(12)), composerStartRestartGroup, 6);
            composer2 = composerStartRestartGroup;
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.edge_done, composerStartRestartGroup, 0), (Modifier) null, TextPrimary, TextUnitKt.getSp(17), (FontStyle) null, FontWeight.Companion.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 200064, 0, 131026);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.EdgeFeaturesSheetKt$$ExternalSyntheticLambda4
                public final Object invoke(Object obj, Object obj2) {
                    return EdgeFeaturesSheetKt.DoneBlock$lambda$32(i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void FailedBlock(final String str, final Function0<Unit> function0, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(772142780);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(function0) ? 32 : 16;
        }
        int i3 = i2;
        if ((i3 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(772142780, i3, -1, "com.hermes.android.ui.FailedBlock (EdgeFeaturesSheet.kt:374)");
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
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null);
            float f = 10;
            float f2 = Dp.constructor-impl(f);
            float f3 = 18;
            Shape shape = RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f3));
            long j = CardShadow;
            Modifier modifier2 = PaddingKt.padding-3ABfNKs(BackgroundKt.background-bw27NRU$default(ClipKt.clip(ShadowKt.shadow-s4CzXII$default(modifierFillMaxWidth$default, f2, shape, false, Color.copy-wmQWz5c$default(j, 0.06f, 0.0f, 0.0f, 0.0f, 14, (Object) null), Color.copy-wmQWz5c$default(j, 0.06f, 0.0f, 0.0f, 0.0f, 14, (Object) null), 4, (Object) null), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f3))), CardBg, (Shape) null, 2, (Object) null), Dp.constructor-impl(16));
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
            Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
            Modifier modifier3 = Modifier.Companion;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composerStartRestartGroup, 48);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
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
            IconKt.Icon-ww6aTOc(ErrorOutlineKt.getErrorOutline(Icons.Outlined.INSTANCE), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(20)), Danger, composerStartRestartGroup, 3504, 0);
            SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f)), composerStartRestartGroup, 6);
            composerStartRestartGroup.startReplaceGroup(1128504317);
            String strStringResource = str;
            if (StringsKt.isBlank(strStringResource)) {
                strStringResource = StringResources_androidKt.stringResource(R.string.edge_failed, composerStartRestartGroup, 0);
            }
            composerStartRestartGroup.endReplaceGroup();
            TextKt.Text--4IGK_g(strStringResource, (Modifier) null, TextPrimary, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composerStartRestartGroup, 3456, 0, 131058);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.endNode();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.endNode();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(14)), composerStartRestartGroup, 6);
            Modifier modifier4 = SizeKt.height-3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(52));
            Shape circleShape = RoundedCornerShapeKt.getCircleShape();
            float f4 = Dp.constructor-impl(1);
            long j2 = AccentDark;
            composer2 = composerStartRestartGroup;
            ButtonKt.OutlinedButton(function0, modifier4, false, circleShape, ButtonDefaults.INSTANCE.outlinedButtonColors-ro_MJ88(0L, j2, 0L, 0L, composerStartRestartGroup, (ButtonDefaults.$stable << 12) | 48, 13), (ButtonElevation) null, BorderStrokeKt.BorderStroke-cXLIe8U(f4, j2), (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$EdgeFeaturesSheetKt.INSTANCE.m36getLambda2$app_release(), composer2, ((i3 >> 3) & 14) | 806879280, 420);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.EdgeFeaturesSheetKt$$ExternalSyntheticLambda10
                public final Object invoke(Object obj, Object obj2) {
                    return EdgeFeaturesSheetKt.FailedBlock$lambda$37(str, function0, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final boolean isInstalledFromPlayStore(ComponentActivity componentActivity) {
        String installerPackageName;
        try {
            if (Build.VERSION.SDK_INT >= 30) {
                installerPackageName = componentActivity.getPackageManager().getInstallSourceInfo(componentActivity.getPackageName()).getInstallingPackageName();
            } else {
                installerPackageName = componentActivity.getPackageManager().getInstallerPackageName(componentActivity.getPackageName());
            }
            if (!Intrinsics.areEqual(installerPackageName, "com.android.vending")) {
                if (!Intrinsics.areEqual(installerPackageName, "com.google.android.packageinstaller")) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static final void launchReviewThenInstall(final ComponentActivity componentActivity, final BootstrapManager bootstrapManager, final CoroutineScope coroutineScope, final Function1<? super InstallState, Unit> function1, final Function1<? super String, Unit> function12, final Function0<Unit> function0) {
        if (!isInstalledFromPlayStore(componentActivity)) {
            Log.d(TAG, "Not installed from Play Store, skipping review flow");
            startEdgeInstall(bootstrapManager, coroutineScope, function1, function12, function0);
            return;
        }
        final ReviewManager reviewManagerCreate = ReviewManagerFactory.create((Context) componentActivity);
        Intrinsics.checkNotNullExpressionValue(reviewManagerCreate, "create(...)");
        Task<ReviewInfo> taskRequestReviewFlow = reviewManagerCreate.requestReviewFlow();
        Intrinsics.checkNotNullExpressionValue(taskRequestReviewFlow, "requestReviewFlow(...)");
        taskRequestReviewFlow.addOnCompleteListener(new OnCompleteListener() { // from class: com.hermes.android.ui.EdgeFeaturesSheetKt$$ExternalSyntheticLambda9
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                EdgeFeaturesSheetKt.launchReviewThenInstall$lambda$39(reviewManagerCreate, componentActivity, bootstrapManager, coroutineScope, function1, function12, function0, task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void launchReviewThenInstall$lambda$39(ReviewManager reviewManager, ComponentActivity componentActivity, final BootstrapManager bootstrapManager, final CoroutineScope coroutineScope, final Function1 function1, final Function1 function12, final Function0 function0, Task task) {
        Intrinsics.checkNotNullParameter(task, "task");
        if (task.isSuccessful()) {
            Task<Void> taskLaunchReviewFlow = reviewManager.launchReviewFlow((Activity) componentActivity, (ReviewInfo) task.getResult());
            Intrinsics.checkNotNullExpressionValue(taskLaunchReviewFlow, "launchReviewFlow(...)");
            taskLaunchReviewFlow.addOnCompleteListener(new OnCompleteListener() { // from class: com.hermes.android.ui.EdgeFeaturesSheetKt$$ExternalSyntheticLambda0
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task2) {
                    EdgeFeaturesSheetKt.launchReviewThenInstall$lambda$39$lambda$38(bootstrapManager, coroutineScope, function1, function12, function0, task2);
                }
            });
        } else {
            Exception exception = task.getException();
            Log.w(TAG, "Review request failed: " + (exception != null ? exception.getMessage() : null) + ", proceeding to install");
            startEdgeInstall(bootstrapManager, coroutineScope, function1, function12, function0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void launchReviewThenInstall$lambda$39$lambda$38(BootstrapManager bootstrapManager, CoroutineScope coroutineScope, Function1 function1, Function1 function12, Function0 function0, Task task) {
        Intrinsics.checkNotNullParameter(task, "it");
        Log.d(TAG, "Review flow completed, starting edge install");
        startEdgeInstall(bootstrapManager, coroutineScope, function1, function12, function0);
    }

    /* JADX INFO: renamed from: com.hermes.android.ui.EdgeFeaturesSheetKt$startEdgeInstall$1, reason: invalid class name */
    /* JADX INFO: compiled from: EdgeFeaturesSheet.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.ui.EdgeFeaturesSheetKt$startEdgeInstall$1", f = "EdgeFeaturesSheet.kt", i = {}, l = {486, 493}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ BootstrapManager $bootstrapManager;
        final /* synthetic */ Function0<Unit> $onDone;
        final /* synthetic */ Function1<InstallState, Unit> $onStateChange;
        final /* synthetic */ Function1<String, Unit> $onStatus;
        final /* synthetic */ CoroutineScope $scope;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super InstallState, Unit> function1, Function0<Unit> function0, BootstrapManager bootstrapManager, CoroutineScope coroutineScope, Function1<? super String, Unit> function12, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$onStateChange = function1;
            this.$onDone = function0;
            this.$bootstrapManager = bootstrapManager;
            this.$scope = coroutineScope;
            this.$onStatus = function12;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$onStateChange, this.$onDone, this.$bootstrapManager, this.$scope, this.$onStatus, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = BuildersKt.withContext(Dispatchers.getIO(), new EdgeFeaturesSheetKt$startEdgeInstall$1$ok$1(this.$bootstrapManager, this.$scope, this.$onStatus, null), (Continuation) this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    this.$onDone.invoke();
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                this.$onStateChange.invoke(InstallState.DONE);
                this.label = 2;
                if (DelayKt.delay(1500L, (Continuation) this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                this.$onDone.invoke();
                return Unit.INSTANCE;
            }
            this.$onStateChange.invoke(InstallState.FAILED);
            return Unit.INSTANCE;
        }
    }

    private static final void startEdgeInstall(BootstrapManager bootstrapManager, CoroutineScope coroutineScope, Function1<? super InstallState, Unit> function1, Function1<? super String, Unit> function12, Function0<Unit> function0) {
        function1.invoke(InstallState.INSTALLING);
        BuildersKt.launch$default(coroutineScope, (CoroutineContext) null, (CoroutineStart) null, new AnonymousClass1(function1, function0, bootstrapManager, coroutineScope, function12, null), 3, (Object) null);
    }
}
