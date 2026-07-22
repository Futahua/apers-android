package com.hermes.android.ui.localllm;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.database.Cursor;
import android.net.Uri;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.ClickableKt;
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
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.CheckCircleKt;
import androidx.compose.material.icons.filled.RadioButtonUncheckedKt;
import androidx.compose.material3.AndroidAlertDialog_androidKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonElevation;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.window.DialogProperties;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.play.core.splitinstall.SplitInstallManager;
import com.google.android.play.core.splitinstall.SplitInstallManagerFactory;
import com.google.android.play.core.splitinstall.SplitInstallRequest;
import com.google.android.play.core.splitinstall.SplitInstallSessionState;
import com.google.android.play.core.splitinstall.SplitInstallStateUpdatedListener;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.goterl.lazysodium.interfaces.PwHash;
import com.hermes.android.HermesPaths;
import com.hermes.android.LocalLlmModuleBridge;
import com.hermes.android.NpuModuleBridge;
import com.hermes.android.R;
import com.hermes.android.data.HermesConfigRepository;
import com.hermes.android.llama.ActiveModelStore;
import com.hermes.android.llama.BackendPreference;
import com.hermes.android.llama.LocalInferenceEngine;
import com.hermes.android.llama.LocalLlmCrashGuard;
import com.hermes.android.llama.LocalLlmThresholds;
import com.hermes.android.llama.ModelDownloadState;
import com.hermes.android.llama.NpuSupport;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000v\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rH\u0000\u001aJ\u0010\u0011\u001a\u00020\r2\u001c\u0010\u0012\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00132\u001c\u0010\u0016\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013H\u0080@¢\u0006\u0002\u0010\u0018\u001a9\u0010\u0019\u001a\u00020\u00172\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00170\u001b2\u001c\u0010\u0016\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013H\u0007¢\u0006\u0002\u0010\u001c\u001a+\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\r2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00170\u001bH\u0003¢\u0006\u0002\u0010\"\u001a,\u0010#\u001a\u00020\u00172\b\b\u0002\u0010$\u001a\u00020\u00012\u0011\u0010%\u001a\r\u0012\u0004\u0012\u00020\u00170\u001b¢\u0006\u0002\b&H\u0003¢\u0006\u0004\b'\u0010(\u001aM\u0010)\u001a\u00020\u00172\u0011\u0010*\u001a\r\u0012\u0004\u0012\u00020\u00170\u001b¢\u0006\u0002\b&2\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010,\u001a\u00020\r2\b\u0010-\u001a\u0004\u0018\u00010\u001f2\u0011\u0010%\u001a\r\u0012\u0004\u0012\u00020\u00170\u001b¢\u0006\u0002\b&H\u0003¢\u0006\u0002\u0010.\u001a;\u0010/\u001a\u00020\u00172\u0006\u00100\u001a\u00020\u001f2\u0006\u00101\u001a\u00020\u001f2\u0006\u00102\u001a\u00020\r2\u0006\u0010 \u001a\u00020\r2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00170\u001bH\u0003¢\u0006\u0002\u00103\u001a\u0015\u00104\u001a\u00020\u00172\u0006\u00105\u001a\u000206H\u0003¢\u0006\u0002\u00107\u001a\u0015\u00108\u001a\u00020\u00172\u0006\u00109\u001a\u00020:H\u0003¢\u0006\u0002\u0010;\u001a\u0010\u0010<\u001a\u00020\u00172\u0006\u0010=\u001a\u00020>H\u0002\u001a\u001a\u0010?\u001a\u0004\u0018\u00010\u001f2\u0006\u0010=\u001a\u00020>2\u0006\u0010@\u001a\u00020AH\u0002\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0005\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0006\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0007\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\b\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\t\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\n\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u000b\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\f\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000¨\u0006B²\u0006\f\u0010C\u001a\u0004\u0018\u00010DX\u008a\u008e\u0002²\u0006\n\u0010E\u001a\u00020:X\u008a\u008e\u0002²\u0006\f\u0010F\u001a\u0004\u0018\u00010\u001fX\u008a\u008e\u0002²\u0006\f\u0010G\u001a\u0004\u0018\u000106X\u008a\u008e\u0002²\u0006\f\u0010H\u001a\u0004\u0018\u00010IX\u008a\u008e\u0002²\u0006\f\u0010J\u001a\u0004\u0018\u00010KX\u008a\u008e\u0002²\u0006\f\u0010L\u001a\u0004\u0018\u00010\u001fX\u008a\u008e\u0002²\u0006\u0012\u0010M\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001bX\u008a\u008e\u0002²\u0006\n\u0010N\u001a\u00020\rX\u008a\u008e\u0002²\u0006\n\u0010O\u001a\u00020\u001fX\u008a\u008e\u0002²\u0006\f\u0010P\u001a\u0004\u0018\u00010:X\u008a\u008e\u0002²\u0006\n\u0010Q\u001a\u00020\rX\u008a\u008e\u0002²\u0006\f\u0010R\u001a\u0004\u0018\u00010IX\u008a\u008e\u0002"}, d2 = {"Glass", "Landroidx/compose/ui/graphics/Color;", "J", "GlassBorder", "TextPrimary", "TextSecondary", "TextMuted", "AccentBlue", "ActiveGreen", "WarnAmber", "ErrorRed", "ButtonBlueText", "SHOW_CPU_GPU_ENGINE", BuildConfig.FLAVOR, "isActiveLocalProvider", "providerIsLocalLlm", "backendLoaded", "sequenceActivation", "activate", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", BuildConfig.FLAVOR, "onActivated", BuildConfig.FLAVOR, "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "LocalLlmSetupScreen", "onBack", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "DeleteTextButton", "text", BuildConfig.FLAVOR, "enabled", "onClick", "(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "GlassCard", "borderColor", "content", "Landroidx/compose/runtime/Composable;", "GlassCard-3J-VO9M", "(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "EngineCard", "icon", "title", AppMeasurementSdk.ConditionalUserProperty.ACTIVE, "backendInfo", "(Lkotlin/jvm/functions/Function2;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "BackendOptionRow", "label", "desc", "selected", "(Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "DownloadProgressCard", "st", "Lcom/hermes/android/llama/ModelDownloadState;", "(Lcom/hermes/android/llama/ModelDownloadState;Landroidx/compose/runtime/Composer;I)V", "ProgressBarLine", "percent", BuildConfig.FLAVOR, "(ILandroidx/compose/runtime/Composer;I)V", "restartAppProcess", "context", "Landroid/content/Context;", "queryDisplayName", "uri", "Landroid/net/Uri;", "app_release", "snap", "Lcom/hermes/android/ui/localllm/SetupSnapshot;", "refreshKey", "busyLabel", "dlState", "dlTarget", "Lcom/hermes/android/ui/localllm/DlTarget;", "dlJob", "Lkotlinx/coroutines/Job;", "errorText", "retryAction", "showPicker", "customUrl", "npuModuleProgress", "npuNeedsRestart", "confirmDelete"}, k = 2, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class LocalLlmSetupScreenKt {
    private static final boolean SHOW_CPU_GPU_ENGINE = false;
    private static final long Glass = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.13f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
    private static final long GlassBorder = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.24f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
    private static final long TextPrimary = Color.Companion.getWhite-0d7_KjU();
    private static final long TextSecondary = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.7f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
    private static final long TextMuted = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.5f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
    private static final long AccentBlue = ColorKt.Color(4282090191L);
    private static final long ActiveGreen = ColorKt.Color(4281648985L);
    private static final long WarnAmber = ColorKt.Color(4294688548L);
    private static final long ErrorRed = ColorKt.Color(4294747557L);
    private static final long ButtonBlueText = ColorKt.Color(4280640424L);

    /* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[ModelDownloadState.FailureReason.values().length];
            try {
                iArr[ModelDownloadState.FailureReason.NETWORK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ModelDownloadState.FailureReason.INSUFFICIENT_STORAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ModelDownloadState.FailureReason.CHECKSUM_MISMATCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ModelDownloadState.FailureReason.INVALID_FORMAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ModelDownloadState.FailureReason.RATE_LIMITED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ModelDownloadState.FailureReason.UNKNOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[DlTarget.values().length];
            try {
                iArr2[DlTarget.NPU_BUNDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[DlTarget.GGUF.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$sequenceActivation$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt", f = "LocalLlmSetupScreen.kt", i = {0, 1}, l = {169, 170}, m = "sequenceActivation", n = {"onActivated", "ok"}, s = {"L$0", "Z$0"})
    static final class C00401 extends ContinuationImpl {
        Object L$0;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C00401(Continuation<? super C00401> continuation) {
            super(continuation);
        }

        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LocalLlmSetupScreenKt.sequenceActivation(null, null, (Continuation) this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BackendOptionRow$lambda$80(String str, String str2, boolean z, boolean z2, Function0 function0, int i, Composer composer, int i2) {
        BackendOptionRow(str, str2, z, z2, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit DeleteTextButton$lambda$69(String str, boolean z, Function0 function0, int i, Composer composer, int i2) {
        DeleteTextButton(str, z, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit DownloadProgressCard$lambda$81(ModelDownloadState modelDownloadState, int i, Composer composer, int i2) {
        DownloadProgressCard(modelDownloadState, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EngineCard$lambda$75(Function2 function2, String str, boolean z, String str2, Function2 function22, int i, Composer composer, int i2) {
        EngineCard(function2, str, z, str2, function22, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit GlassCard_3J_VO9M$lambda$71(long j, Function2 function2, int i, int i2, Composer composer, int i3) {
        m101GlassCard3JVO9M(j, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
    public static final Unit LocalLlmSetupScreen$lambda$68(Function0 function0, Function1 function1, int i, Composer composer, int i2) throws NoWhenBranchMatchedException {
        LocalLlmSetupScreen(function0, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ProgressBarLine$lambda$83(int i, int i2, Composer composer, int i3) {
        ProgressBarLine(i, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
        return Unit.INSTANCE;
    }

    public static final boolean isActiveLocalProvider(boolean z, boolean z2) {
        return z && z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object sequenceActivation(Function1<? super Continuation<? super Boolean>, ? extends Object> function1, Function1<? super Continuation<? super Unit>, ? extends Object> function12, Continuation<? super Boolean> continuation) {
        C00401 c00401;
        boolean zBooleanValue;
        if (continuation instanceof C00401) {
            c00401 = (C00401) continuation;
            if ((c00401.label & Integer.MIN_VALUE) != 0) {
                c00401.label -= Integer.MIN_VALUE;
            } else {
                c00401 = new C00401(continuation);
            }
        }
        Object objInvoke = c00401.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c00401.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objInvoke);
            c00401.L$0 = function12;
            c00401.label = 1;
            objInvoke = function1.invoke(c00401);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                zBooleanValue = c00401.Z$0;
                ResultKt.throwOnFailure(objInvoke);
                return Boxing.boxBoolean(zBooleanValue);
            }
            function12 = (Function1) c00401.L$0;
            ResultKt.throwOnFailure(objInvoke);
        }
        zBooleanValue = ((Boolean) objInvoke).booleanValue();
        if (zBooleanValue) {
            CoroutineContext coroutineContext = NonCancellable.INSTANCE;
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(function12, null);
            c00401.L$0 = null;
            c00401.Z$0 = zBooleanValue;
            c00401.label = 2;
            if (BuildersKt.withContext(coroutineContext, anonymousClass2, c00401) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Boxing.boxBoolean(zBooleanValue);
    }

    /* JADX INFO: renamed from: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$sequenceActivation$2, reason: invalid class name */
    /* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$sequenceActivation$2", f = "LocalLlmSetupScreen.kt", i = {}, l = {170}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Continuation<? super Unit>, Object> $onActivated;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$onActivated = function1;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$onActivated, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function1<Continuation<? super Unit>, Object> function1 = this.$onActivated;
                this.label = 1;
                if (function1.invoke(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
    public static final void LocalLlmSetupScreen(final Function0<Unit> function0, final Function1<? super Continuation<? super Unit>, ? extends Object> function1, Composer composer, final int i) throws NoWhenBranchMatchedException {
        int i2;
        LocalLlmSetupScreenKt$LocalLlmSetupScreen$1$1 localLlmSetupScreenKt$LocalLlmSetupScreen$1$1;
        final String str;
        int i3;
        MutableState mutableState;
        final String str2;
        final MutableState mutableState2;
        final String str3;
        final String str4;
        ActivityResultContract activityResultContract;
        MutableState mutableState3;
        MutableState mutableState4;
        String str5;
        SplitInstallManager splitInstallManager;
        CoroutineScope coroutineScope;
        Context context;
        final String str6;
        final String str7;
        final String str8;
        MutableState mutableState5;
        MutableState mutableState6;
        MutableState mutableState7;
        Composer composer2;
        int i4;
        boolean z;
        Pair pair;
        final MutableState mutableState8;
        Composer composer3;
        Intrinsics.checkNotNullParameter(function0, "onBack");
        Intrinsics.checkNotNullParameter(function1, "onActivated");
        Composer composerStartRestartGroup = composer.startRestartGroup(1168144790);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(function1) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1168144790, i2, -1, "com.hermes.android.ui.localllm.LocalLlmSetupScreen (LocalLlmSetupScreen.kt:191)");
            }
            CompositionLocal localContext = AndroidCompositionLocals_androidKt.getLocalContext();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = composerStartRestartGroup.consume(localContext);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            final Context context2 = (Context) objConsume;
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 773894976, "CC(rememberCoroutineScope)482@20332L144:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -954367824, "CC(remember):Effects.kt#9igjgp");
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, composerStartRestartGroup));
                composerStartRestartGroup.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
                objRememberedValue = compositionScopedCoroutineScopeCanceller;
            }
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            final CoroutineScope coroutineScope2 = ((CompositionScopedCoroutineScopeCanceller) objRememberedValue).getCoroutineScope();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.startReplaceGroup(-1883151534);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = SplitInstallManagerFactory.create(context2);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            SplitInstallManager splitInstallManager2 = (SplitInstallManager) objRememberedValue2;
            composerStartRestartGroup.endReplaceGroup();
            Intrinsics.checkNotNull(splitInstallManager2);
            composerStartRestartGroup.startReplaceGroup(-1883149204);
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                objRememberedValue3 = SnapshotStateKt.mutableStateOf$default((Object) null, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            MutableState mutableState9 = (MutableState) objRememberedValue3;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1883146916);
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                objRememberedValue4 = SnapshotIntStateKt.mutableIntStateOf(0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            final MutableIntState mutableIntState = (MutableIntState) objRememberedValue4;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1883145147);
            Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                objRememberedValue5 = SnapshotStateKt.mutableStateOf$default((Object) null, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            final MutableState mutableState10 = (MutableState) objRememberedValue5;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1883143151);
            Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                objRememberedValue6 = SnapshotStateKt.mutableStateOf$default((Object) null, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            }
            final MutableState mutableState11 = (MutableState) objRememberedValue6;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1883140761);
            Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                objRememberedValue7 = SnapshotStateKt.mutableStateOf$default((Object) null, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
            }
            final MutableState mutableState12 = (MutableState) objRememberedValue7;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1883138782);
            Object objRememberedValue8 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue8 == Composer.Companion.getEmpty()) {
                objRememberedValue8 = SnapshotStateKt.mutableStateOf$default((Object) null, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
            }
            final MutableState mutableState13 = (MutableState) objRememberedValue8;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1883136827);
            Object objRememberedValue9 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue9 == Composer.Companion.getEmpty()) {
                objRememberedValue9 = SnapshotStateKt.mutableStateOf$default((Object) null, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
            }
            final MutableState mutableState14 = (MutableState) objRememberedValue9;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1883134709);
            Object objRememberedValue10 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue10 == Composer.Companion.getEmpty()) {
                objRememberedValue10 = SnapshotStateKt.mutableStateOf$default((Object) null, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
            }
            MutableState mutableState15 = (MutableState) objRememberedValue10;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1883132451);
            Object objRememberedValue11 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue11 == Composer.Companion.getEmpty()) {
                objRememberedValue11 = SnapshotStateKt.mutableStateOf$default(false, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
            }
            final MutableState mutableState16 = (MutableState) objRememberedValue11;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1883130662);
            Object objRememberedValue12 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue12 == Composer.Companion.getEmpty()) {
                objRememberedValue12 = SnapshotStateKt.mutableStateOf$default(BuildConfig.FLAVOR, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
            }
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1883128702);
            Object objRememberedValue13 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue13 == Composer.Companion.getEmpty()) {
                objRememberedValue13 = SnapshotStateKt.mutableStateOf$default((Object) null, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
            }
            final MutableState mutableState17 = (MutableState) objRememberedValue13;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1883126563);
            Object objRememberedValue14 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue14 == Composer.Companion.getEmpty()) {
                objRememberedValue14 = SnapshotStateKt.mutableStateOf$default(false, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
            }
            final MutableState mutableState18 = (MutableState) objRememberedValue14;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1883124633);
            Object objRememberedValue15 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue15 == Composer.Companion.getEmpty()) {
                objRememberedValue15 = SnapshotStateKt.mutableStateOf$default((Object) null, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
            }
            MutableState mutableState19 = (MutableState) objRememberedValue15;
            composerStartRestartGroup.endReplaceGroup();
            String strStringResource = StringResources_androidKt.stringResource(R.string.local_llm_starting, composerStartRestartGroup, 0);
            String strStringResource2 = StringResources_androidKt.stringResource(R.string.local_llm_failed_load, composerStartRestartGroup, 0);
            final String strStringResource3 = StringResources_androidKt.stringResource(R.string.local_llm_failed_unknown, composerStartRestartGroup, 0);
            final String strStringResource4 = StringResources_androidKt.stringResource(R.string.local_llm_import_failed_to_open, composerStartRestartGroup, 0);
            StringResources_androidKt.stringResource(R.string.local_llm_custom_url_blank, composerStartRestartGroup, 0);
            StringResources_androidKt.stringResource(R.string.local_llm_custom_url_invalid, composerStartRestartGroup, 0);
            String strStringResource5 = StringResources_androidKt.stringResource(R.string.local_llm_failed_network, composerStartRestartGroup, 0);
            String strStringResource6 = StringResources_androidKt.stringResource(R.string.local_llm_failed_storage, composerStartRestartGroup, 0);
            String strStringResource7 = StringResources_androidKt.stringResource(R.string.local_llm_failed_checksum, composerStartRestartGroup, 0);
            String strStringResource8 = StringResources_androidKt.stringResource(R.string.local_llm_failed_invalid_format, composerStartRestartGroup, 0);
            String strStringResource9 = StringResources_androidKt.stringResource(R.string.local_llm_failed_rate_limit, composerStartRestartGroup, 0);
            String strStringResource10 = StringResources_androidKt.stringResource(R.string.local_llm_engine_busy, composerStartRestartGroup, 0);
            String strStringResource11 = StringResources_androidKt.stringResource(R.string.local_llm_deleting, composerStartRestartGroup, 0);
            String strStringResource12 = StringResources_androidKt.stringResource(R.string.local_llm_delete_failed, composerStartRestartGroup, 0);
            Integer numValueOf = Integer.valueOf(LocalLlmSetupScreen$lambda$5(mutableIntState));
            composerStartRestartGroup.startReplaceGroup(-1882980224);
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(context2) | composerStartRestartGroup.changedInstance(splitInstallManager2);
            Object objRememberedValue16 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue16 == Composer.Companion.getEmpty()) {
                localLlmSetupScreenKt$LocalLlmSetupScreen$1$1 = new LocalLlmSetupScreenKt$LocalLlmSetupScreen$1$1(context2, splitInstallManager2, mutableState9, null);
                composerStartRestartGroup.updateRememberedValue(localLlmSetupScreenKt$LocalLlmSetupScreen$1$1);
            } else {
                localLlmSetupScreenKt$LocalLlmSetupScreen$1$1 = objRememberedValue16;
            }
            composerStartRestartGroup.endReplaceGroup();
            EffectsKt.LaunchedEffect(numValueOf, (Function2) localLlmSetupScreenKt$LocalLlmSetupScreen$1$1, composerStartRestartGroup, 0);
            ActivityResultContract openDocument = new ActivityResultContracts.OpenDocument();
            composerStartRestartGroup.startReplaceGroup(-1882755404);
            int i5 = i2 & 14;
            boolean zChanged = composerStartRestartGroup.changed(strStringResource4) | composerStartRestartGroup.changedInstance(coroutineScope2) | composerStartRestartGroup.changedInstance(context2) | composerStartRestartGroup.changed(strStringResource3) | composerStartRestartGroup.changed(strStringResource) | composerStartRestartGroup.changedInstance(function1) | (i5 == 4) | composerStartRestartGroup.changed(strStringResource2) | composerStartRestartGroup.changed(strStringResource5) | composerStartRestartGroup.changed(strStringResource6) | composerStartRestartGroup.changed(strStringResource7) | composerStartRestartGroup.changed(strStringResource8) | composerStartRestartGroup.changed(strStringResource9);
            Object objRememberedValue17 = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue17 == Composer.Companion.getEmpty()) {
                str = strStringResource;
                i3 = i5;
                mutableState = mutableState19;
                str2 = strStringResource5;
                mutableState2 = mutableState15;
                str3 = strStringResource9;
                str4 = strStringResource8;
                activityResultContract = openDocument;
                mutableState3 = mutableState14;
                mutableState4 = mutableState9;
                str5 = strStringResource3;
                splitInstallManager = splitInstallManager2;
                coroutineScope = coroutineScope2;
                context = context2;
                str6 = strStringResource2;
                str7 = strStringResource6;
                str8 = strStringResource7;
                objRememberedValue17 = new Function1() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda16
                    public final Object invoke(Object obj) {
                        return LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$49$lambda$48(strStringResource4, mutableState14, coroutineScope2, context2, strStringResource3, mutableState16, mutableState12, mutableState13, mutableState11, mutableIntState, str, function0, str6, mutableState10, function1, str2, str7, str8, str4, str3, mutableState2, (Uri) obj);
                    }
                };
                composerStartRestartGroup = composerStartRestartGroup;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
            } else {
                activityResultContract = openDocument;
                str2 = strStringResource5;
                str3 = strStringResource9;
                mutableState4 = mutableState9;
                str5 = strStringResource3;
                splitInstallManager = splitInstallManager2;
                coroutineScope = coroutineScope2;
                context = context2;
                str6 = strStringResource2;
                str7 = strStringResource6;
                str8 = strStringResource7;
                mutableState = mutableState19;
                mutableState2 = mutableState15;
                mutableState3 = mutableState14;
                str4 = strStringResource8;
                str = strStringResource;
                i3 = i5;
            }
            composerStartRestartGroup.endReplaceGroup();
            ActivityResultRegistryKt.rememberLauncherForActivityResult(activityResultContract, (Function1) objRememberedValue17, composerStartRestartGroup, 0);
            ActivityResultContract startIntentSenderForResult = new ActivityResultContracts.StartIntentSenderForResult();
            composerStartRestartGroup.startReplaceGroup(-1882744467);
            Object objRememberedValue18 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue18 == Composer.Companion.getEmpty()) {
                objRememberedValue18 = new Function1() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda1
                    public final Object invoke(Object obj) {
                        return LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$51$lambda$50((ActivityResult) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
            }
            composerStartRestartGroup.endReplaceGroup();
            final ManagedActivityResultLauncher managedActivityResultLauncherRememberLauncherForActivityResult = ActivityResultRegistryKt.rememberLauncherForActivityResult(startIntentSenderForResult, (Function1) objRememberedValue18, composerStartRestartGroup, 48);
            Unit unit = Unit.INSTANCE;
            composerStartRestartGroup.startReplaceGroup(-1882722286);
            final String str9 = str2;
            final String str10 = str5;
            final SplitInstallManager splitInstallManager3 = splitInstallManager;
            boolean zChanged2 = composerStartRestartGroup.changed(str9) | composerStartRestartGroup.changedInstance(managedActivityResultLauncherRememberLauncherForActivityResult) | composerStartRestartGroup.changed(str10) | composerStartRestartGroup.changedInstance(splitInstallManager3);
            Object objRememberedValue19 = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || objRememberedValue19 == Composer.Companion.getEmpty()) {
                final MutableState mutableState20 = mutableState3;
                objRememberedValue19 = new Function1() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda2
                    public final Object invoke(Object obj) {
                        return LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$57$lambda$56(splitInstallManager3, str9, managedActivityResultLauncherRememberLauncherForActivityResult, str10, mutableState17, mutableState18, mutableIntState, mutableState20, (DisposableEffectScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue19);
            }
            composerStartRestartGroup.endReplaceGroup();
            EffectsKt.DisposableEffect(unit, (Function1) objRememberedValue19, composerStartRestartGroup, 6);
            Modifier modifierStatusBarsPadding = WindowInsetsPadding_androidKt.statusBarsPadding(SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, (Object) null));
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composerStartRestartGroup, 0);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierStatusBarsPadding);
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
            composerStartRestartGroup.startReplaceGroup(-2110622849);
            float f = 8;
            Modifier modifier = PaddingKt.padding-VpY3zN4(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(f), Dp.constructor-impl(f));
            Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
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
            IconButtonKt.IconButton(function0, (Modifier) null, false, (IconButtonColors) null, (MutableInteractionSource) null, ComposableSingletons$LocalLlmSetupScreenKt.INSTANCE.m77getLambda1$app_release(), composerStartRestartGroup, i3 | 196608, 30);
            Composer composer6 = composerStartRestartGroup;
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_setup_title, composerStartRestartGroup, 0), (Modifier) null, TextPrimary, TextUnitKt.getSp(20), (FontStyle) null, FontWeight.Companion.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer6, 200064, 0, 131026);
            ComposerKt.sourceInformationMarkerEnd(composer6);
            composer6.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer6);
            ComposerKt.sourceInformationMarkerEnd(composer6);
            ComposerKt.sourceInformationMarkerEnd(composer6);
            SetupSnapshot setupSnapshotLocalLlmSetupScreen$lambda$2 = LocalLlmSetupScreen$lambda$2(mutableState4);
            composer6.startReplaceGroup(70458079);
            if (setupSnapshotLocalLlmSetupScreen$lambda$2 == null) {
                Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, (Object) null);
                Alignment center = Alignment.Companion.getCenter();
                ComposerKt.sourceInformationMarkerStart(composer6, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
                ComposerKt.sourceInformationMarkerStart(composer6, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer6, 0);
                CompositionLocalMap currentCompositionLocalMap3 = composer6.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer6, modifierFillMaxSize$default);
                Function0 constructor3 = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer6, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer6.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer6.startReusableNode();
                if (composer6.getInserting()) {
                    composer6.createNode(constructor3);
                } else {
                    composer6.useNode();
                }
                Composer composer7 = Updater.constructor-impl(composer6);
                Updater.set-impl(composer7, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.set-impl(composer7, currentCompositionLocalMap3, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash3 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composer7.getInserting() || !Intrinsics.areEqual(composer7.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                    composer7.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
                    composer7.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
                }
                Updater.set-impl(composer7, modifierMaterializeModifier3, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer6, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScope boxScope = BoxScopeInstance.INSTANCE;
                ProgressIndicatorKt.CircularProgressIndicator-LxG7B9w(SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(40)), Color.Companion.getWhite-0d7_KjU(), Dp.constructor-impl(3), 0L, 0, composer6, 438, 24);
                ComposerKt.sourceInformationMarkerEnd(composer6);
                composer6.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer6);
                ComposerKt.sourceInformationMarkerEnd(composer6);
                ComposerKt.sourceInformationMarkerEnd(composer6);
                composer6.endReplaceGroup();
                composer6.endReplaceGroup();
                z = true;
                i4 = 54;
                composer2 = composer6;
                mutableState7 = mutableState3;
            } else {
                composer6.endReplaceGroup();
                Modifier modifier2 = PaddingKt.padding-qDBjuR0$default(PaddingKt.padding-VpY3zN4$default(ScrollKt.verticalScroll$default(SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, (Object) null), ScrollKt.rememberScrollState(0, composer6, 0, 1), false, (FlingBehavior) null, false, 14, (Object) null), Dp.constructor-impl(20), 0.0f, 2, (Object) null), 0.0f, 0.0f, 0.0f, Dp.constructor-impl(24), 7, (Object) null);
                Arrangement.Vertical vertical = Arrangement.INSTANCE.spacedBy-0680j_4(Dp.constructor-impl(12));
                ComposerKt.sourceInformationMarkerStart(composer6, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(vertical, Alignment.Companion.getStart(), composer6, 6);
                ComposerKt.sourceInformationMarkerStart(composer6, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash4 = ComposablesKt.getCurrentCompositeKeyHash(composer6, 0);
                CompositionLocalMap currentCompositionLocalMap4 = composer6.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composer6, modifier2);
                Function0 constructor4 = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer6, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer6.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer6.startReusableNode();
                if (composer6.getInserting()) {
                    composer6.createNode(constructor4);
                } else {
                    composer6.useNode();
                }
                Composer composer8 = Updater.constructor-impl(composer6);
                Updater.set-impl(composer8, measurePolicyColumnMeasurePolicy2, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.set-impl(composer8, currentCompositionLocalMap4, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash4 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composer8.getInserting() || !Intrinsics.areEqual(composer8.rememberedValue(), Integer.valueOf(currentCompositeKeyHash4))) {
                    composer8.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash4));
                    composer8.apply(Integer.valueOf(currentCompositeKeyHash4), setCompositeKeyHash4);
                }
                Updater.set-impl(composer8, modifierMaterializeModifier4, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer6, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                ColumnScope columnScope2 = ColumnScopeInstance.INSTANCE;
                composer6.startReplaceGroup(228318854);
                if (setupSnapshotLocalLlmSetupScreen$lambda$2.getDirtyExit()) {
                    m101GlassCard3JVO9M(Color.copy-wmQWz5c$default(WarnAmber, 0.5f, 0.0f, 0.0f, 0.0f, 14, (Object) null), ComposableLambdaKt.rememberComposableLambda(1448413391, true, new LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$1(coroutineScope, context, mutableState10, mutableState11, mutableIntState), composer6, 54), composer6, 54, 0);
                }
                composer6.endReplaceGroup();
                final String strLocalLlmSetupScreen$lambda$8 = LocalLlmSetupScreen$lambda$8(mutableState10);
                composer6.startReplaceGroup(228437815);
                if (strLocalLlmSetupScreen$lambda$8 != null) {
                    m101GlassCard3JVO9M(0L, ComposableLambdaKt.rememberComposableLambda(-1236092472, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$2$1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((Composer) obj, ((Number) obj2).intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer9, int i6) {
                            if ((i6 & 3) != 2 || !composer9.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1236092472, i6, -1, "com.hermes.android.ui.localllm.LocalLlmSetupScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LocalLlmSetupScreen.kt:639)");
                                }
                                Alignment.Vertical centerVertically2 = Alignment.Companion.getCenterVertically();
                                String str11 = strLocalLlmSetupScreen$lambda$8;
                                ComposerKt.sourceInformationMarkerStart(composer9, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                                Modifier modifier3 = Modifier.Companion;
                                MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically2, composer9, 48);
                                ComposerKt.sourceInformationMarkerStart(composer9, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                                int currentCompositeKeyHash5 = ComposablesKt.getCurrentCompositeKeyHash(composer9, 0);
                                CompositionLocalMap currentCompositionLocalMap5 = composer9.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composer9, modifier3);
                                Function0 constructor5 = ComposeUiNode.Companion.getConstructor();
                                ComposerKt.sourceInformationMarkerStart(composer9, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                if (!(composer9.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer9.startReusableNode();
                                if (composer9.getInserting()) {
                                    composer9.createNode(constructor5);
                                } else {
                                    composer9.useNode();
                                }
                                Composer composer10 = Updater.constructor-impl(composer9);
                                Updater.set-impl(composer10, measurePolicyRowMeasurePolicy2, ComposeUiNode.Companion.getSetMeasurePolicy());
                                Updater.set-impl(composer10, currentCompositionLocalMap5, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                                Function2 setCompositeKeyHash5 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                                if (composer10.getInserting() || !Intrinsics.areEqual(composer10.rememberedValue(), Integer.valueOf(currentCompositeKeyHash5))) {
                                    composer10.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash5));
                                    composer10.apply(Integer.valueOf(currentCompositeKeyHash5), setCompositeKeyHash5);
                                }
                                Updater.set-impl(composer10, modifierMaterializeModifier5, ComposeUiNode.Companion.getSetModifier());
                                ComposerKt.sourceInformationMarkerStart(composer9, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                                RowScope rowScope2 = RowScopeInstance.INSTANCE;
                                ProgressIndicatorKt.CircularProgressIndicator-LxG7B9w(SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(20)), Color.Companion.getWhite-0d7_KjU(), Dp.constructor-impl(2), 0L, 0, composer9, 438, 24);
                                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(12)), composer9, 6);
                                TextKt.Text--4IGK_g(str11, (Modifier) null, LocalLlmSetupScreenKt.TextPrimary, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer9, 3456, 0, 131058);
                                ComposerKt.sourceInformationMarkerEnd(composer9);
                                composer9.endNode();
                                ComposerKt.sourceInformationMarkerEnd(composer9);
                                ComposerKt.sourceInformationMarkerEnd(composer9);
                                ComposerKt.sourceInformationMarkerEnd(composer9);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            composer9.skipToGroupEnd();
                        }
                    }, composer6, 54), composer6, 48, 1);
                    Unit unit2 = Unit.INSTANCE;
                    Unit unit3 = Unit.INSTANCE;
                }
                composer6.endReplaceGroup();
                ModelDownloadState modelDownloadStateLocalLlmSetupScreen$lambda$11 = LocalLlmSetupScreen$lambda$11(mutableState11);
                composer6.startReplaceGroup(228453375);
                if (modelDownloadStateLocalLlmSetupScreen$lambda$11 != null) {
                    DownloadProgressCard(modelDownloadStateLocalLlmSetupScreen$lambda$11, composer6, 0);
                    Unit unit4 = Unit.INSTANCE;
                    Unit unit5 = Unit.INSTANCE;
                }
                composer6.endReplaceGroup();
                String strLocalLlmSetupScreen$lambda$20 = LocalLlmSetupScreen$lambda$20(mutableState3);
                composer6.startReplaceGroup(228456184);
                if (strLocalLlmSetupScreen$lambda$20 == null) {
                    mutableState5 = mutableState2;
                    mutableState6 = mutableState3;
                } else {
                    mutableState5 = mutableState2;
                    mutableState6 = mutableState3;
                    m101GlassCard3JVO9M(Color.copy-wmQWz5c$default(ErrorRed, 0.5f, 0.0f, 0.0f, 0.0f, 14, (Object) null), ComposableLambdaKt.rememberComposableLambda(-937452592, true, new LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$4$1(strLocalLlmSetupScreen$lambda$20, mutableState5, mutableState6), composer6, 54), composer6, 54, 0);
                    Unit unit6 = Unit.INSTANCE;
                    Unit unit7 = Unit.INSTANCE;
                }
                composer6.endReplaceGroup();
                boolean z2 = LocalLlmSetupScreen$lambda$8(mutableState10) == null && LocalLlmSetupScreen$lambda$11(mutableState11) == null;
                composer6.startReplaceGroup(228505926);
                composer6.endReplaceGroup();
                boolean zIsActiveLocalProvider = isActiveLocalProvider(setupSnapshotLocalLlmSetupScreen$lambda$2.getProviderIsLocalLlm(), setupSnapshotLocalLlmSetupScreen$lambda$2.getNpuActive());
                if (setupSnapshotLocalLlmSetupScreen$lambda$2.getNpuRunnable() || setupSnapshotLocalLlmSetupScreen$lambda$2.getNpuModuleInstalled()) {
                    composer6.startReplaceGroup(-1496259429);
                    Function2<Composer, Integer, Unit> function2M78getLambda10$app_release = ComposableSingletons$LocalLlmSetupScreenKt.INSTANCE.m78getLambda10$app_release();
                    String strStringResource13 = StringResources_androidKt.stringResource(R.string.local_llm_engine_npu_title, composer6, 0);
                    String backendInfo = zIsActiveLocalProvider ? setupSnapshotLocalLlmSetupScreen$lambda$2.getBackendInfo() : null;
                    mutableState7 = mutableState6;
                    LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7 localLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7 = new LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7(setupSnapshotLocalLlmSetupScreen$lambda$2, z2, splitInstallManager3, str10, coroutineScope, str, context, function1, function0, str6, str9, str7, str8, str4, str3, zIsActiveLocalProvider, mutableState18, mutableState17, mutableState7, mutableState16, mutableState12, mutableState13, mutableState11, mutableIntState, mutableState10, mutableState5, mutableState);
                    composer2 = composer6;
                    i4 = 54;
                    z = true;
                    EngineCard(function2M78getLambda10$app_release, strStringResource13, zIsActiveLocalProvider, backendInfo, ComposableLambdaKt.rememberComposableLambda(1988057748, true, localLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7, composer2, 54), composer2, 24582);
                    composer2.endReplaceGroup();
                } else {
                    composer6.startReplaceGroup(-1489097220);
                    m101GlassCard3JVO9M(0L, ComposableSingletons$LocalLlmSetupScreenKt.INSTANCE.m81getLambda13$app_release(), composer6, 48, 1);
                    composer6.endReplaceGroup();
                    mutableState7 = mutableState6;
                    z = true;
                    i4 = 54;
                    composer2 = composer6;
                }
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
            DlTarget dlTargetLocalLlmSetupScreen$lambda$38 = LocalLlmSetupScreen$lambda$38(mutableState);
            if (dlTargetLocalLlmSetupScreen$lambda$38 == null) {
                composer3 = composer2;
            } else {
                int i6 = WhenMappings.$EnumSwitchMapping$1[dlTargetLocalLlmSetupScreen$lambda$38.ordinal()];
                if (i6 == z) {
                    composer2.startReplaceGroup(71240500);
                    pair = TuplesKt.to(StringResources_androidKt.stringResource(R.string.local_llm_npu_delete, composer2, 0), StringResources_androidKt.stringResource(R.string.local_llm_npu_delete_confirm, composer2, 0));
                    composer2.endReplaceGroup();
                } else {
                    if (i6 != 2) {
                        composer2.startReplaceGroup(71238585);
                        composer2.endReplaceGroup();
                        throw new NoWhenBranchMatchedException();
                    }
                    composer2.startReplaceGroup(71245860);
                    pair = TuplesKt.to(StringResources_androidKt.stringResource(R.string.local_llm_delete_model, composer2, 0), StringResources_androidKt.stringResource(R.string.local_llm_delete_model_confirm, composer2, 0));
                    composer2.endReplaceGroup();
                }
                final String str11 = (String) pair.component1();
                final String str12 = (String) pair.component2();
                long jColor = ColorKt.Color(4279902261L);
                composer2.startReplaceGroup(71252050);
                Object objRememberedValue20 = composer2.rememberedValue();
                if (objRememberedValue20 == Composer.Companion.getEmpty()) {
                    mutableState8 = mutableState;
                    objRememberedValue20 = new Function0() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda3
                        public final Object invoke() {
                            return LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$67$lambda$66$lambda$65(mutableState8);
                        }
                    };
                    composer2.updateRememberedValue(objRememberedValue20);
                } else {
                    mutableState8 = mutableState;
                }
                composer2.endReplaceGroup();
                Function2 function2RememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-575612380, z, new LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2(dlTargetLocalLlmSetupScreen$lambda$38, coroutineScope, strStringResource11, context, strStringResource12, strStringResource10, mutableState8, mutableState10, mutableState7, mutableIntState), composer2, i4);
                Function2 function2RememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-88538654, z, new LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$3(mutableState8), composer2, i4);
                Function2 function2RememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(398535072, z, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$4
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((Composer) obj, ((Number) obj2).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer9, int i7) {
                        if ((i7 & 3) == 2 && composer9.getSkipping()) {
                            composer9.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(398535072, i7, -1, "com.hermes.android.ui.localllm.LocalLlmSetupScreen.<anonymous>.<anonymous> (LocalLlmSetupScreen.kt:1001)");
                        }
                        TextKt.Text--4IGK_g(str11, (Modifier) null, LocalLlmSetupScreenKt.TextPrimary, TextUnitKt.getSp(17), (FontStyle) null, FontWeight.Companion.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer9, 200064, 0, 131026);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, composer2, i4);
                Function2 function2RememberComposableLambda4 = ComposableLambdaKt.rememberComposableLambda(642071935, z, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$5
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((Composer) obj, ((Number) obj2).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer9, int i7) {
                        if ((i7 & 3) == 2 && composer9.getSkipping()) {
                            composer9.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(642071935, i7, -1, "com.hermes.android.ui.localllm.LocalLlmSetupScreen.<anonymous>.<anonymous> (LocalLlmSetupScreen.kt:1002)");
                        }
                        TextKt.Text--4IGK_g(str12, (Modifier) null, LocalLlmSetupScreenKt.TextSecondary, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(20), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer9, 3456, 6, 130034);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, composer2, i4);
                composer3 = composer2;
                AndroidAlertDialog_androidKt.AlertDialog-Oix01E0((Function0) objRememberedValue20, function2RememberComposableLambda, (Modifier) null, function2RememberComposableLambda2, (Function2) null, function2RememberComposableLambda3, function2RememberComposableLambda4, (Shape) null, jColor, 0L, 0L, 0L, 0.0f, (DialogProperties) null, composer3, 102435894, 0, 16020);
                Unit unit8 = Unit.INSTANCE;
                Unit unit9 = Unit.INSTANCE;
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda4
                public final Object invoke(Object obj, Object obj2) {
                    return LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$68(function0, function1, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final SetupSnapshot LocalLlmSetupScreen$lambda$2(MutableState<SetupSnapshot> mutableState) {
        return (SetupSnapshot) ((State) mutableState).getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int LocalLlmSetupScreen$lambda$5(MutableIntState mutableIntState) {
        return ((IntState) mutableIntState).getIntValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String LocalLlmSetupScreen$lambda$8(MutableState<String> mutableState) {
        return (String) ((State) mutableState).getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ModelDownloadState LocalLlmSetupScreen$lambda$11(MutableState<ModelDownloadState> mutableState) {
        return (ModelDownloadState) ((State) mutableState).getValue();
    }

    private static final DlTarget LocalLlmSetupScreen$lambda$14(MutableState<DlTarget> mutableState) {
        return (DlTarget) ((State) mutableState).getValue();
    }

    private static final Job LocalLlmSetupScreen$lambda$17(MutableState<Job> mutableState) {
        return (Job) ((State) mutableState).getValue();
    }

    private static final String LocalLlmSetupScreen$lambda$20(MutableState<String> mutableState) {
        return (String) ((State) mutableState).getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function0<Unit> LocalLlmSetupScreen$lambda$23(MutableState<Function0<Unit>> mutableState) {
        return (Function0) ((State) mutableState).getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean LocalLlmSetupScreen$lambda$26(MutableState<Boolean> mutableState) {
        return ((Boolean) ((State) mutableState).getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void LocalLlmSetupScreen$lambda$27(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String LocalLlmSetupScreen$lambda$29(MutableState<String> mutableState) {
        return (String) ((State) mutableState).getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer LocalLlmSetupScreen$lambda$32(MutableState<Integer> mutableState) {
        return (Integer) ((State) mutableState).getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean LocalLlmSetupScreen$lambda$35(MutableState<Boolean> mutableState) {
        return ((Boolean) ((State) mutableState).getValue()).booleanValue();
    }

    private static final void LocalLlmSetupScreen$lambda$36(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    private static final DlTarget LocalLlmSetupScreen$lambda$38(MutableState<DlTarget> mutableState) {
        return (DlTarget) ((State) mutableState).getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
    public static final String LocalLlmSetupScreen$failureText(String str, String str2, String str3, String str4, String str5, String str6, ModelDownloadState.FailureReason failureReason) throws NoWhenBranchMatchedException {
        switch (WhenMappings.$EnumSwitchMapping$0[failureReason.ordinal()]) {
            case 1:
                return str;
            case 2:
                return str2;
            case 3:
                return str3;
            case 4:
                return str4;
            case 5:
                return str5;
            case 6:
                return str6;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x017a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final SetupSnapshot LocalLlmSetupScreen$loadSnapshot(Context context, SplitInstallManager splitInstallManager) {
        String backendInfo;
        boolean zIsSocSupported;
        Object obj;
        String str;
        String str2;
        int i;
        boolean z;
        String str3;
        Context applicationContext = context.getApplicationContext();
        ActiveModelStore activeModelStore = ActiveModelStore.INSTANCE;
        Intrinsics.checkNotNull(applicationContext);
        ActiveModelStore.ActiveModelMeta activeModelMeta = activeModelStore.read(applicationContext);
        boolean zIsModelReady = LocalLlmModuleBridge.INSTANCE.isModelReady(applicationContext);
        LocalInferenceEngine localInferenceEngineCurrentEngine = LocalLlmModuleBridge.INSTANCE.currentEngine();
        if (localInferenceEngineCurrentEngine == null) {
            backendInfo = null;
        } else {
            LocalInferenceEngine localInferenceEngine = localInferenceEngineCurrentEngine.isModelLoaded() ? localInferenceEngineCurrentEngine : null;
            if (localInferenceEngine != null) {
                backendInfo = localInferenceEngine.getBackendInfo();
            }
        }
        String strListGpuDevices = LocalLlmModuleBridge.INSTANCE.listGpuDevices(applicationContext);
        boolean zContains = splitInstallManager.getInstalledModules().contains("npu_native");
        boolean zIsModuleAvailable = NpuModuleBridge.INSTANCE.isModuleAvailable();
        if (zIsModuleAvailable) {
            zIsSocSupported = NpuModuleBridge.INSTANCE.isRunnableOnThisDevice(applicationContext);
        } else {
            zIsSocSupported = NpuSupport.INSTANCE.isSocSupported();
        }
        boolean z2 = zIsSocSupported;
        Object systemService = applicationContext.getSystemService("activity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
        long jRecommendedModelSizeBytes = LocalLlmModuleBridge.INSTANCE.recommendedModelSizeBytes();
        try {
            Result.Companion companion = Result.Companion;
            obj = Result.constructor-impl(new HermesConfigRepository(HermesPaths.INSTANCE.hermesHome(applicationContext)).readActiveProviderId());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        if (Result.isFailure-impl(obj)) {
            obj = BuildConfig.FLAVOR;
        }
        String str4 = (String) obj;
        String displayName = activeModelMeta != null ? activeModelMeta.getDisplayName() : null;
        if (activeModelMeta != null) {
            str = strListGpuDevices;
            str2 = activeModelMeta.getSourceDescription() + " • " + ((activeModelMeta.getSizeBytes() + ((long) 500000)) / ((long) 1000000)) + "MB";
        } else {
            str = strListGpuDevices;
            str2 = null;
        }
        boolean z3 = localInferenceEngineCurrentEngine != null && localInferenceEngineCurrentEngine.isModelLoaded();
        String str5 = BackendPreference.INSTANCE.read(applicationContext);
        boolean z4 = zIsModelReady && !StringsKt.isBlank(str);
        String str6 = (String) SequencesKt.firstOrNull(StringsKt.lineSequence(str));
        String str7 = (str6 == null || StringsKt.isBlank(str6)) ? null : str6;
        boolean z5 = zIsModuleAvailable && NpuModuleBridge.INSTANCE.isBundleReady(applicationContext);
        int iBundleDownloadBytes = (int) ((NpuModuleBridge.INSTANCE.bundleDownloadBytes(applicationContext) + 500000) / 1000000);
        int iBundleContextSize = zIsModuleAvailable ? NpuModuleBridge.INSTANCE.bundleContextSize(applicationContext) : 0;
        if (backendInfo != null) {
            i = iBundleDownloadBytes;
            if (StringsKt.startsWith$default(backendInfo, "NPU", false, 2, (Object) null)) {
                z = true;
            }
            boolean zAreEqual = Intrinsics.areEqual(str4, "local_llm");
            if (jRecommendedModelSizeBytes <= 0) {
                str3 = str2;
                boolean z6 = LocalLlmThresholds.shouldWarnInsufficientRam$default(LocalLlmThresholds.INSTANCE, memoryInfo.totalMem, jRecommendedModelSizeBytes, 0, 4, null);
                return new SetupSnapshot(zIsModelReady, displayName, str3, z3, backendInfo, str5, z4, str7, zContains, zIsModuleAvailable, z2, z5, i, iBundleContextSize, z, zAreEqual, z6, !LocalLlmCrashGuard.INSTANCE.wasCleanExit(applicationContext));
            }
            str3 = str2;
            return new SetupSnapshot(zIsModelReady, displayName, str3, z3, backendInfo, str5, z4, str7, zContains, zIsModuleAvailable, z2, z5, i, iBundleContextSize, z, zAreEqual, z6, !LocalLlmCrashGuard.INSTANCE.wasCleanExit(applicationContext));
        }
        i = iBundleDownloadBytes;
        z = false;
        boolean zAreEqual2 = Intrinsics.areEqual(str4, "local_llm");
        if (jRecommendedModelSizeBytes <= 0) {
        }
        return new SetupSnapshot(zIsModelReady, displayName, str3, z3, backendInfo, str5, z4, str7, zContains, zIsModuleAvailable, z2, z5, i, iBundleContextSize, z, zAreEqual2, z6, !LocalLlmCrashGuard.INSTANCE.wasCleanExit(applicationContext));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void LocalLlmSetupScreen$activateEngine(CoroutineScope coroutineScope, String str, Function0<Unit> function0, String str2, MutableState<String> mutableState, MutableState<String> mutableState2, Context context, Function1<? super Continuation<? super Unit>, ? extends Object> function1, MutableIntState mutableIntState, String str3, boolean z) {
        BuildersKt.launch$default(coroutineScope, (CoroutineContext) null, (CoroutineStart) null, new LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1(str, z, function0, str2, mutableState, mutableState2, context, str3, function1, mutableIntState, null), 3, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void LocalLlmSetupScreen$deleteNpuBundle(CoroutineScope coroutineScope, String str, String str2, String str3, MutableState<String> mutableState, MutableState<String> mutableState2, Context context, MutableIntState mutableIntState) {
        BuildersKt.launch$default(coroutineScope, (CoroutineContext) null, (CoroutineStart) null, new LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteNpuBundle$1(str, str2, str3, mutableState, mutableState2, context, mutableIntState, null), 3, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void LocalLlmSetupScreen$deleteGgufModel(CoroutineScope coroutineScope, String str, String str2, String str3, MutableState<String> mutableState, MutableState<String> mutableState2, Context context, MutableIntState mutableIntState) {
        BuildersKt.launch$default(coroutineScope, (CoroutineContext) null, (CoroutineStart) null, new LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1(str, str2, str3, mutableState, mutableState2, context, mutableIntState, null), 3, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void LocalLlmSetupScreen$collectDownload(String str, CoroutineScope coroutineScope, MutableState<String> mutableState, MutableState<Boolean> mutableState2, MutableState<DlTarget> mutableState3, MutableState<Job> mutableState4, MutableState<ModelDownloadState> mutableState5, MutableIntState mutableIntState, String str2, Function0<Unit> function0, String str3, MutableState<String> mutableState6, Context context, Function1<? super Continuation<? super Unit>, ? extends Object> function1, String str4, String str5, String str6, String str7, String str8, MutableState<Function0<Unit>> mutableState7, Flow<? extends ModelDownloadState> flow, DlTarget dlTarget, Function0<Unit> function02) {
        if (flow == null) {
            mutableState.setValue(str);
            return;
        }
        mutableState.setValue(null);
        LocalLlmSetupScreen$lambda$27(mutableState2, false);
        mutableState3.setValue(dlTarget);
        Job jobLocalLlmSetupScreen$lambda$17 = LocalLlmSetupScreen$lambda$17(mutableState4);
        if (jobLocalLlmSetupScreen$lambda$17 != null) {
            Job.DefaultImpls.cancel$default(jobLocalLlmSetupScreen$lambda$17, (CancellationException) null, 1, (Object) null);
        }
        mutableState4.setValue(BuildersKt.launch$default(coroutineScope, (CoroutineContext) null, (CoroutineStart) null, new LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1(flow, dlTarget, function02, mutableState5, mutableState3, mutableIntState, coroutineScope, str2, function0, str3, mutableState6, mutableState, context, function1, str4, str5, str6, str7, str8, str, mutableState7, null), 3, (Object) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void LocalLlmSetupScreen$startRecommendedDownload(final Context context, final String str, final CoroutineScope coroutineScope, final MutableState<String> mutableState, final MutableState<Boolean> mutableState2, final MutableState<DlTarget> mutableState3, final MutableState<Job> mutableState4, final MutableState<ModelDownloadState> mutableState5, final MutableIntState mutableIntState, final String str2, final Function0<Unit> function0, final String str3, final MutableState<String> mutableState6, final Function1<? super Continuation<? super Unit>, ? extends Object> function1, final String str4, final String str5, final String str6, final String str7, final String str8, final MutableState<Function0<Unit>> mutableState7) {
        LocalLlmSetupScreen$collectDownload(str, coroutineScope, mutableState, mutableState2, mutableState3, mutableState4, mutableState5, mutableIntState, str2, function0, str3, mutableState6, context, function1, str4, str5, str6, str7, str8, mutableState7, LocalLlmModuleBridge.INSTANCE.downloadRecommendedModel(context), DlTarget.GGUF, new Function0() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda11
            public final Object invoke() {
                return LocalLlmSetupScreenKt.LocalLlmSetupScreen$startRecommendedDownload$lambda$46(context, str, coroutineScope, mutableState, mutableState2, mutableState3, mutableState4, mutableState5, mutableIntState, str2, function0, str3, mutableState6, function1, str4, str5, str6, str7, str8, mutableState7);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LocalLlmSetupScreen$startRecommendedDownload$lambda$46(Context context, String str, CoroutineScope coroutineScope, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, MutableIntState mutableIntState, String str2, Function0 function0, String str3, MutableState mutableState6, Function1 function1, String str4, String str5, String str6, String str7, String str8, MutableState mutableState7) {
        LocalLlmSetupScreen$startRecommendedDownload(context, str, coroutineScope, mutableState, mutableState2, mutableState3, mutableState4, mutableState5, mutableIntState, str2, function0, str3, mutableState6, function1, str4, str5, str6, str7, str8, mutableState7);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void LocalLlmSetupScreen$startUrlDownload(final String str, final String str2, final Context context, final MutableState<String> mutableState, final MutableState<String> mutableState2, final String str3, final CoroutineScope coroutineScope, final MutableState<Boolean> mutableState3, final MutableState<DlTarget> mutableState4, final MutableState<Job> mutableState5, final MutableState<ModelDownloadState> mutableState6, final MutableIntState mutableIntState, final String str4, final Function0<Unit> function0, final String str5, final MutableState<String> mutableState7, final Function1<? super Continuation<? super Unit>, ? extends Object> function1, final String str6, final String str7, final String str8, final String str9, final String str10, final MutableState<Function0<Unit>> mutableState8) {
        String string = StringsKt.trim(LocalLlmSetupScreen$lambda$29(mutableState)).toString();
        if (string.length() != 0) {
            if (StringsKt.startsWith$default(string, "http://", false, 2, (Object) null) || StringsKt.startsWith$default(string, "https://", false, 2, (Object) null)) {
                LocalLlmSetupScreen$collectDownload(str3, coroutineScope, mutableState2, mutableState3, mutableState4, mutableState5, mutableState6, mutableIntState, str4, function0, str5, mutableState7, context, function1, str6, str7, str8, str9, str10, mutableState8, LocalLlmModuleBridge.INSTANCE.downloadModelFromUrl(context, string), DlTarget.GGUF, new Function0() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda15
                    public final Object invoke() {
                        return LocalLlmSetupScreenKt.LocalLlmSetupScreen$startUrlDownload$lambda$47(str, str2, context, mutableState, mutableState2, str3, coroutineScope, mutableState3, mutableState4, mutableState5, mutableState6, mutableIntState, str4, function0, str5, mutableState7, function1, str6, str7, str8, str9, str10, mutableState8);
                    }
                });
                return;
            } else {
                mutableState2.setValue(str2);
                return;
            }
        }
        mutableState2.setValue(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LocalLlmSetupScreen$startUrlDownload$lambda$47(String str, String str2, Context context, MutableState mutableState, MutableState mutableState2, String str3, CoroutineScope coroutineScope, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, MutableState mutableState6, MutableIntState mutableIntState, String str4, Function0 function0, String str5, MutableState mutableState7, Function1 function1, String str6, String str7, String str8, String str9, String str10, MutableState mutableState8) {
        LocalLlmSetupScreen$startUrlDownload(str, str2, context, mutableState, mutableState2, str3, coroutineScope, mutableState3, mutableState4, mutableState5, mutableState6, mutableIntState, str4, function0, str5, mutableState7, function1, str6, str7, str8, str9, str10, mutableState8);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void LocalLlmSetupScreen$startImport(CoroutineScope coroutineScope, Context context, String str, MutableState<String> mutableState, MutableState<Boolean> mutableState2, MutableState<DlTarget> mutableState3, MutableState<Job> mutableState4, MutableState<ModelDownloadState> mutableState5, MutableIntState mutableIntState, String str2, Function0<Unit> function0, String str3, MutableState<String> mutableState6, Function1<? super Continuation<? super Unit>, ? extends Object> function1, String str4, String str5, String str6, String str7, String str8, MutableState<Function0<Unit>> mutableState7, Uri uri) {
        BuildersKt.launch$default(coroutineScope, (CoroutineContext) null, (CoroutineStart) null, new LocalLlmSetupScreenKt$LocalLlmSetupScreen$startImport$1(context, uri, str, coroutineScope, mutableState, mutableState2, mutableState3, mutableState4, mutableState5, mutableIntState, str2, function0, str3, mutableState6, function1, str4, str5, str6, str7, str8, mutableState7, null), 3, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LocalLlmSetupScreen$lambda$49$lambda$48(String str, MutableState mutableState, CoroutineScope coroutineScope, Context context, String str2, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, MutableIntState mutableIntState, String str3, Function0 function0, String str4, MutableState mutableState6, Function1 function1, String str5, String str6, String str7, String str8, String str9, MutableState mutableState7, Uri uri) {
        if (uri == null) {
            mutableState.setValue(str);
        } else {
            LocalLlmSetupScreen$startImport(coroutineScope, context, str2, mutableState, mutableState2, mutableState3, mutableState4, mutableState5, mutableIntState, str3, function0, str4, mutableState6, function1, str5, str6, str7, str8, str9, mutableState7, uri);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LocalLlmSetupScreen$lambda$51$lambda$50(ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(activityResult, "it");
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void LocalLlmSetupScreen$startNpuModuleInstall(SplitInstallManager splitInstallManager, final MutableState<Integer> mutableState, final MutableState<String> mutableState2, final String str) {
        mutableState.setValue(0);
        mutableState2.setValue(null);
        SplitInstallRequest splitInstallRequestBuild = SplitInstallRequest.newBuilder().addModule("npu_native").build();
        Intrinsics.checkNotNullExpressionValue(splitInstallRequestBuild, "build(...)");
        splitInstallManager.startInstall(splitInstallRequestBuild).addOnFailureListener(new OnFailureListener() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda5
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                LocalLlmSetupScreenKt.LocalLlmSetupScreen$startNpuModuleInstall$lambda$52(str, mutableState, mutableState2, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void LocalLlmSetupScreen$startNpuModuleInstall$lambda$52(String str, MutableState mutableState, MutableState mutableState2, Exception exc) {
        Intrinsics.checkNotNullParameter(exc, "e");
        mutableState.setValue(null);
        String message = exc.getMessage();
        if (message != null) {
            str = message;
        }
        mutableState2.setValue(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void LocalLlmSetupScreen$startNpuBundleDownload(final Context context, final String str, final CoroutineScope coroutineScope, final MutableState<String> mutableState, final MutableState<Boolean> mutableState2, final MutableState<DlTarget> mutableState3, final MutableState<Job> mutableState4, final MutableState<ModelDownloadState> mutableState5, final MutableIntState mutableIntState, final String str2, final Function0<Unit> function0, final String str3, final MutableState<String> mutableState6, final Function1<? super Continuation<? super Unit>, ? extends Object> function1, final String str4, final String str5, final String str6, final String str7, final String str8, final MutableState<Function0<Unit>> mutableState7) {
        LocalLlmSetupScreen$collectDownload(str, coroutineScope, mutableState, mutableState2, mutableState3, mutableState4, mutableState5, mutableIntState, str2, function0, str3, mutableState6, context, function1, str4, str5, str6, str7, str8, mutableState7, NpuModuleBridge.INSTANCE.downloadBundle(context), DlTarget.NPU_BUNDLE, new Function0() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda13
            public final Object invoke() {
                return LocalLlmSetupScreenKt.LocalLlmSetupScreen$startNpuBundleDownload$lambda$53(context, str, coroutineScope, mutableState, mutableState2, mutableState3, mutableState4, mutableState5, mutableIntState, str2, function0, str3, mutableState6, function1, str4, str5, str6, str7, str8, mutableState7);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LocalLlmSetupScreen$startNpuBundleDownload$lambda$53(Context context, String str, CoroutineScope coroutineScope, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, MutableIntState mutableIntState, String str2, Function0 function0, String str3, MutableState mutableState6, Function1 function1, String str4, String str5, String str6, String str7, String str8, MutableState mutableState7) {
        LocalLlmSetupScreen$startNpuBundleDownload(context, str, coroutineScope, mutableState, mutableState2, mutableState3, mutableState4, mutableState5, mutableIntState, str2, function0, str3, mutableState6, function1, str4, str5, str6, str7, str8, mutableState7);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult LocalLlmSetupScreen$lambda$57$lambda$56(final SplitInstallManager splitInstallManager, final String str, final ManagedActivityResultLauncher managedActivityResultLauncher, final String str2, final MutableState mutableState, final MutableState mutableState2, final MutableIntState mutableIntState, final MutableState mutableState3, DisposableEffectScope disposableEffectScope) {
        Intrinsics.checkNotNullParameter(disposableEffectScope, "$this$DisposableEffect");
        final SplitInstallStateUpdatedListener splitInstallStateUpdatedListener = new SplitInstallStateUpdatedListener() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda14
            @Override // com.google.android.play.core.listener.StateUpdatedListener
            public final void onStateUpdate(SplitInstallSessionState splitInstallSessionState) {
                LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$57$lambda$56$lambda$54(str, managedActivityResultLauncher, str2, mutableState, mutableState2, mutableIntState, mutableState3, splitInstallSessionState);
            }
        };
        splitInstallManager.registerListener(splitInstallStateUpdatedListener);
        return new DisposableEffectResult() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$lambda$57$lambda$56$$inlined$onDispose$1
            public void dispose() {
                splitInstallManager.unregisterListener(splitInstallStateUpdatedListener);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void LocalLlmSetupScreen$lambda$57$lambda$56$lambda$54(String str, ManagedActivityResultLauncher managedActivityResultLauncher, String str2, MutableState mutableState, MutableState mutableState2, MutableIntState mutableIntState, MutableState mutableState3, SplitInstallSessionState splitInstallSessionState) {
        Intrinsics.checkNotNullParameter(splitInstallSessionState, "state");
        if (splitInstallSessionState.moduleNames().contains("npu_native")) {
            int iStatus = splitInstallSessionState.status();
            if (iStatus == 2) {
                long j = splitInstallSessionState.totalBytesToDownload();
                mutableState.setValue(Integer.valueOf(j > 0 ? (int) ((splitInstallSessionState.bytesDownloaded() * ((long) 100)) / j) : 0));
                return;
            }
            if (iStatus == 5) {
                mutableState.setValue(null);
                LocalLlmSetupScreen$lambda$36(mutableState2, true);
                mutableIntState.setIntValue(LocalLlmSetupScreen$lambda$5(mutableIntState) + 1);
                return;
            }
            if (iStatus == 6) {
                mutableState.setValue(null);
                mutableState3.setValue(str);
                return;
            }
            if (iStatus == 7) {
                mutableState.setValue(null);
                return;
            }
            if (iStatus != 8) {
                return;
            }
            PendingIntent pendingIntentResolutionIntent = splitInstallSessionState.resolutionIntent();
            if (pendingIntentResolutionIntent != null) {
                try {
                    IntentSender intentSender = pendingIntentResolutionIntent.getIntentSender();
                    Intrinsics.checkNotNullExpressionValue(intentSender, "getIntentSender(...)");
                    managedActivityResultLauncher.launch(new IntentSenderRequest.Builder(intentSender).build());
                    return;
                } catch (Exception unused) {
                    mutableState.setValue(null);
                    mutableState3.setValue(str2);
                    return;
                }
            }
            mutableState.setValue(null);
            mutableState3.setValue(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LocalLlmSetupScreen$lambda$67$lambda$66$lambda$65(MutableState mutableState) {
        mutableState.setValue(null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void DeleteTextButton(final String str, final boolean z, final Function0<Unit> function0, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(2146149888);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(function0) ? 256 : 128;
        }
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2146149888, i2, -1, "com.hermes.android.ui.localllm.DeleteTextButton (LocalLlmSetupScreen.kt:1023)");
            }
            composer2 = composerStartRestartGroup;
            ButtonKt.TextButton(function0, SizeKt.height-3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(40)), z, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(728720829, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt.DeleteTextButton.1
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RowScope rowScope, Composer composer3, int i3) {
                    Intrinsics.checkNotNullParameter(rowScope, "$this$TextButton");
                    if ((i3 & 17) != 16 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(728720829, i3, -1, "com.hermes.android.ui.localllm.DeleteTextButton.<anonymous> (LocalLlmSetupScreen.kt:1029)");
                        }
                        long sp = TextUnitKt.getSp(13);
                        TextKt.Text--4IGK_g(str, (Modifier) null, z ? LocalLlmSetupScreenKt.ErrorRed : Color.copy-wmQWz5c$default(LocalLlmSetupScreenKt.ErrorRed, 0.4f, 0.0f, 0.0f, 0.0f, 14, (Object) null), sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 3072, 0, 131058);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i2 >> 6) & 14) | 805306416 | ((i2 << 3) & 896), 504);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda6
                public final Object invoke(Object obj, Object obj2) {
                    return LocalLlmSetupScreenKt.DeleteTextButton$lambda$69(str, z, function0, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: renamed from: GlassCard-3J-VO9M, reason: not valid java name */
    private static final void m101GlassCard3JVO9M(long j, final Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, final int i, final int i2) {
        long j2;
        int i3;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1933639473);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
            j2 = j;
        } else if ((i & 6) == 0) {
            j2 = j;
            i3 = i | (composerStartRestartGroup.changed(j2) ? 4 : 2);
        } else {
            j2 = j;
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(function2) ? 32 : 16;
        }
        if ((i3 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (i4 != 0) {
                j2 = GlassBorder;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1933639473, i3, -1, "com.hermes.android.ui.localllm.GlassCard (LocalLlmSetupScreen.kt:1041)");
            }
            float f = 16;
            Modifier modifier = PaddingKt.padding-3ABfNKs(BorderKt.border-xT4_qwU(BackgroundKt.background-bw27NRU$default(ClipKt.clip(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f))), Glass, (Shape) null, 2, (Object) null), Dp.constructor-impl(1), j2, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f))), Dp.constructor-impl(f));
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
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final long j3 = j2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda12
                public final Object invoke(Object obj, Object obj2) {
                    return LocalLlmSetupScreenKt.GlassCard_3J_VO9M$lambda$71(j3, function2, i, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void EngineCard(final Function2<? super Composer, ? super Integer, Unit> function2, final String str, final boolean z, final String str2, final Function2<? super Composer, ? super Integer, Unit> function22, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-828500771);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(function2) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(str) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(str2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(function22) ? 16384 : PwHash.ARGON2ID_MEMLIMIT_MIN;
        }
        if ((i2 & 9363) != 9362 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-828500771, i2, -1, "com.hermes.android.ui.localllm.EngineCard (LocalLlmSetupScreen.kt:1059)");
            }
            float f = 16;
            float f2 = 1;
            Modifier modifier = PaddingKt.padding-3ABfNKs(BorderKt.border-xT4_qwU(BackgroundKt.background-bw27NRU$default(ClipKt.clip(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f))), Glass, (Shape) null, 2, (Object) null), Dp.constructor-impl(f2), z ? Color.copy-wmQWz5c$default(ActiveGreen, 0.55f, 0.0f, 0.0f, 0.0f, 14, (Object) null) : GlassBorder, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f))), Dp.constructor-impl(f));
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
            Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
            Modifier modifier2 = Modifier.Companion;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composerStartRestartGroup, 48);
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
            Updater.set-impl(composer3, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer3, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer3.getInserting() || !Intrinsics.areEqual(composer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                composer3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                composer3.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
            }
            Updater.set-impl(composer3, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -407840262, "C101@5126L9:Row.kt#2w3rfo");
            RowScope rowScope = RowScopeInstance.INSTANCE;
            function2.invoke(composerStartRestartGroup, Integer.valueOf(i2 & 14));
            float f3 = 10;
            SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f3)), composerStartRestartGroup, 6);
            int i3 = i2;
            TextKt.Text--4IGK_g(str, RowScope.weight$default(rowScope, Modifier.Companion, 1.0f, false, 2, (Object) null), TextPrimary, TextUnitKt.getSp(16), (FontStyle) null, FontWeight.Companion.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composerStartRestartGroup, ((i2 >> 3) & 14) | 200064, 0, 131024);
            composerStartRestartGroup.startReplaceGroup(-1195450448);
            if (z) {
                Shape shape = RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(6));
                long j = ActiveGreen;
                SurfaceKt.Surface-T9BRK9s((Modifier) null, shape, Color.copy-wmQWz5c$default(j, 0.2f, 0.0f, 0.0f, 0.0f, 14, (Object) null), 0L, 0.0f, 0.0f, BorderStrokeKt.BorderStroke-cXLIe8U(Dp.constructor-impl(f2), Color.copy-wmQWz5c$default(j, 0.5f, 0.0f, 0.0f, 0.0f, 14, (Object) null)), ComposableSingletons$LocalLlmSetupScreenKt.INSTANCE.m84getLambda16$app_release(), composerStartRestartGroup, 14156160, 57);
            }
            composerStartRestartGroup.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.endNode();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.startReplaceGroup(822558261);
            if (str2 != null) {
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(4)), composerStartRestartGroup, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_backend_label, new Object[]{str2}, composerStartRestartGroup, 0), (Modifier) null, TextSecondary, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composerStartRestartGroup, 3456, 0, 131058);
                Unit unit = Unit.INSTANCE;
                Unit unit2 = Unit.INSTANCE;
            }
            composerStartRestartGroup.endReplaceGroup();
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f3)), composerStartRestartGroup, 6);
            function22.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 12) & 14));
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda10
                public final Object invoke(Object obj, Object obj2) {
                    return LocalLlmSetupScreenKt.EngineCard$lambda$75(function2, str, z, str2, function22, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void BackendOptionRow(final String str, final String str2, final boolean z, final boolean z2, final Function0<Unit> function0, Composer composer, final int i) {
        int i2;
        long j;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1248210626);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(str2) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(z2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(function0) ? 16384 : PwHash.ARGON2ID_MEMLIMIT_MIN;
        }
        int i3 = i2;
        if ((i3 & 9363) != 9362 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1248210626, i3, -1, "com.hermes.android.ui.localllm.BackendOptionRow (LocalLlmSetupScreen.kt:1107)");
            }
            float f = 10;
            Modifier modifierClip = ClipKt.clip(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f)));
            composerStartRestartGroup.startReplaceGroup(-2066840150);
            boolean z3 = (57344 & i3) == 16384;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z3 || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new Function0() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda0
                    public final Object invoke() {
                        return LocalLlmSetupScreenKt.BackendOptionRow$lambda$77$lambda$76(function0);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            Modifier modifier = PaddingKt.padding-VpY3zN4(ClickableKt.clickable-XHw0xAI$default(modifierClip, z2, (String) null, (Role) null, (Function0) objRememberedValue, 6, (Object) null), Dp.constructor-impl(4), Dp.constructor-impl(8));
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
            Composer composer2 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer2, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer2, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer2.getInserting() || !Intrinsics.areEqual(composer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                composer2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                composer2.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.set-impl(composer2, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -407840262, "C101@5126L9:Row.kt#2w3rfo");
            RowScope rowScope = RowScopeInstance.INSTANCE;
            Icons.Filled filled = Icons.INSTANCE.getDefault();
            ImageVector checkCircle = z ? CheckCircleKt.getCheckCircle(filled) : RadioButtonUncheckedKt.getRadioButtonUnchecked(filled);
            if (z) {
                j = AccentBlue;
            } else if (z2) {
                j = TextSecondary;
            } else {
                j = Color.copy-wmQWz5c$default(TextMuted, 0.3f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
            }
            IconKt.Icon-ww6aTOc(checkCircle, (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(20)), j, composerStartRestartGroup, 432, 0);
            SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f)), composerStartRestartGroup, 6);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            Modifier modifier2 = Modifier.Companion;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composerStartRestartGroup, 0);
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
            Updater.set-impl(composer3, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer3, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer3.getInserting() || !Intrinsics.areEqual(composer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                composer3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                composer3.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
            }
            Updater.set-impl(composer3, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -384784025, "C88@4444L9:Column.kt#2w3rfo");
            ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
            TextKt.Text--4IGK_g(str, (Modifier) null, z2 ? TextPrimary : TextMuted, TextUnitKt.getSp(14), (FontStyle) null, FontWeight.Companion.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composerStartRestartGroup, (i3 & 14) | 199680, 0, 131026);
            TextKt.Text--4IGK_g(str2, (Modifier) null, TextMuted, TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(15), 0, false, 0, 0, (Function1) null, (TextStyle) null, composerStartRestartGroup, (14 & (i3 >> 3)) | 3456, 6, 130034);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda8
                public final Object invoke(Object obj, Object obj2) {
                    return LocalLlmSetupScreenKt.BackendOptionRow$lambda$80(str, str2, z, z2, function0, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BackendOptionRow$lambda$77$lambda$76(Function0 function0) {
        function0.invoke();
        return Unit.INSTANCE;
    }

    private static final void DownloadProgressCard(final ModelDownloadState modelDownloadState, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1378532116);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modelDownloadState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i2 & 3) != 2 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1378532116, i2, -1, "com.hermes.android.ui.localllm.DownloadProgressCard (LocalLlmSetupScreen.kt:1139)");
            }
            m101GlassCard3JVO9M(0L, ComposableLambdaKt.rememberComposableLambda(1487728460, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt.DownloadProgressCard.1
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i3) {
                    if ((i3 & 3) != 2 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1487728460, i3, -1, "com.hermes.android.ui.localllm.DownloadProgressCard.<anonymous> (LocalLlmSetupScreen.kt:1141)");
                        }
                        ModelDownloadState modelDownloadState2 = modelDownloadState;
                        if (modelDownloadState2 instanceof ModelDownloadState.Downloading) {
                            composer2.startReplaceGroup(-2011939472);
                            int progress = (int) (((ModelDownloadState.Downloading) modelDownloadState).getProgress() * 100);
                            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_downloading, new Object[]{Integer.valueOf(progress)}, composer2, 0), (Modifier) null, LocalLlmSetupScreenKt.TextPrimary, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 131058);
                            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), composer2, 6);
                            if (((ModelDownloadState.Downloading) modelDownloadState).getTotalBytes() > 0) {
                                composer2.startReplaceGroup(-2011646708);
                                LocalLlmSetupScreenKt.ProgressBarLine(progress, composer2, 0);
                                composer2.endReplaceGroup();
                            } else {
                                composer2.startReplaceGroup(-2011566077);
                                Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
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
                                ProgressIndicatorKt.CircularProgressIndicator-LxG7B9w(SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(20)), Color.Companion.getWhite-0d7_KjU(), Dp.constructor-impl(2), 0L, 0, composer2, 438, 24);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                composer2.endNode();
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                composer2.endReplaceGroup();
                            }
                            composer2.endReplaceGroup();
                        } else if (modelDownloadState2 instanceof ModelDownloadState.Verifying) {
                            composer2.startReplaceGroup(-2011263021);
                            Alignment.Vertical centerVertically2 = Alignment.Companion.getCenterVertically();
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
                            ProgressIndicatorKt.CircularProgressIndicator-LxG7B9w(SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(20)), Color.Companion.getWhite-0d7_KjU(), Dp.constructor-impl(2), 0L, 0, composer2, 438, 24);
                            SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(12)), composer2, 6);
                            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_verifying, composer2, 0), (Modifier) null, LocalLlmSetupScreenKt.TextPrimary, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3456, 0, 131058);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            composer2.endNode();
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            composer2.endReplaceGroup();
                        } else {
                            composer2.startReplaceGroup(-2010874064);
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
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 48, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda9
                public final Object invoke(Object obj, Object obj2) {
                    return LocalLlmSetupScreenKt.DownloadProgressCard$lambda$81(modelDownloadState, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ProgressBarLine(final int i, Composer composer, final int i2) {
        int i3;
        Composer composerStartRestartGroup = composer.startRestartGroup(-796426902);
        if ((i2 & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(i) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i3 & 3) != 2 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-796426902, i3, -1, "com.hermes.android.ui.localllm.ProgressBarLine (LocalLlmSetupScreen.kt:1170)");
            }
            float f = 3;
            Modifier modifier = BackgroundKt.background-bw27NRU$default(ClipKt.clip(SizeKt.height-3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(6)), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f))), Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.15f, 0.0f, 0.0f, 0.0f, 14, (Object) null), (Shape) null, 2, (Object) null);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
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
            BoxKt.Box(BackgroundKt.background-bw27NRU$default(ClipKt.clip(SizeKt.fillMaxHeight$default(SizeKt.fillMaxWidth(Modifier.Companion, RangesKt.coerceIn(i, 0, 100) / 100.0f), 0.0f, 1, (Object) null), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f))), Color.Companion.getWhite-0d7_KjU(), (Shape) null, 2, (Object) null), composerStartRestartGroup, 0);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$$ExternalSyntheticLambda7
                public final Object invoke(Object obj, Object obj2) {
                    return LocalLlmSetupScreenKt.ProgressBarLine$lambda$83(i, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void restartAppProcess(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        Intent intentAddFlags = launchIntentForPackage != null ? launchIntentForPackage.addFlags(268468224) : null;
        if (intentAddFlags != null) {
            PendingIntent activity = PendingIntent.getActivity(context.getApplicationContext(), 0, intentAddFlags, 335544320);
            Object systemService = context.getSystemService("alarm");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
            ((AlarmManager) systemService).set(1, System.currentTimeMillis() + ((long) 300), activity);
        }
        System.exit(0);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final String queryDisplayName(Context context, Uri uri) {
        String string;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
            if (cursorQuery == null) {
                return null;
            }
            Cursor cursor = cursorQuery;
            try {
                Cursor cursor2 = cursor;
                if (!cursor2.moveToFirst() || (string = cursor2.getString(0)) == null) {
                    string = null;
                } else if (StringsKt.isBlank(string)) {
                }
                CloseableKt.closeFinally(cursor, (Throwable) null);
                return string;
            } finally {
            }
        } catch (Exception unused) {
            return null;
        }
    }
}
