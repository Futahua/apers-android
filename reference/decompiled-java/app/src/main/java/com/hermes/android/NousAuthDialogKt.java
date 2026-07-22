package com.hermes.android;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.CheckCircleKt;
import androidx.compose.material3.AndroidAlertDialog_androidKt;
import androidx.compose.material3.ButtonColors;
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
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.window.DialogProperties;
import androidx.profileinstaller.ProfileVerifier;
import com.hermes.android.NousAuthDialogKt;
import com.hermes.android.data.AiProvider;
import com.hermes.android.data.HermesConfigRepository;
import com.hermes.android.data.NousAuthFlow;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: NousAuthDialog.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001aK\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u000b2\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00010\u000bH\u0007¢\u0006\u0002\u0010\r¨\u0006\u000e²\u0006\n\u0010\u000f\u001a\u00020\u0010X\u008a\u0084\u0002²\u0006\n\u0010\u0011\u001a\u00020\u0012X\u008a\u008e\u0002²\u0006\n\u0010\u0013\u001a\u00020\u0012X\u008a\u008e\u0002"}, d2 = {"NousAuthDialog", "", "provider", "Lcom/hermes/android/data/AiProvider;", "bootstrap", "Lcom/hermes/android/BootstrapManager;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "hermesRepo", "Lcom/hermes/android/data/HermesConfigRepository;", "onDismiss", "Lkotlin/Function0;", "onSuccess", "(Lcom/hermes/android/data/AiProvider;Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/data/HermesConfigRepository;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "app_release", "state", "Lcom/hermes/android/data/NousAuthFlow$State;", "hasStarted", "", "browserOpened"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class NousAuthDialogKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit NousAuthDialog$lambda$13(AiProvider aiProvider, BootstrapManager bootstrapManager, CoroutineScope coroutineScope, HermesConfigRepository hermesConfigRepository, Function0 function0, Function0 function02, int i, int i2, Composer composer, int i3) {
        NousAuthDialog(aiProvider, bootstrapManager, coroutineScope, hermesConfigRepository, function0, function02, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:131:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void NousAuthDialog(final AiProvider aiProvider, final BootstrapManager bootstrapManager, final CoroutineScope coroutineScope, final HermesConfigRepository hermesConfigRepository, final Function0<Unit> function0, Function0<Unit> function02, Composer composer, final int i, final int i2) {
        int i3;
        Function0<Unit> function03;
        Function0<Unit> function04;
        Object objRememberedValue;
        final NousAuthFlow nousAuthFlow;
        State stateCollectAsState;
        Object objRememberedValue2;
        Object objRememberedValue3;
        NousAuthFlow.State stateNousAuthDialog$lambda$3;
        boolean zChanged;
        NousAuthDialogKt$NousAuthDialog$2$1 nousAuthDialogKt$NousAuthDialog$2$1RememberedValue;
        int i4;
        State state;
        NousAuthFlow.State state2;
        boolean zChangedInstance;
        Object objRememberedValue4;
        Composer composer2;
        final Function0<Unit> function05;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Intrinsics.checkNotNullParameter(aiProvider, "provider");
        Intrinsics.checkNotNullParameter(bootstrapManager, "bootstrap");
        Intrinsics.checkNotNullParameter(coroutineScope, "scope");
        Intrinsics.checkNotNullParameter(hermesConfigRepository, "hermesRepo");
        Intrinsics.checkNotNullParameter(function0, "onDismiss");
        Composer composerStartRestartGroup = composer.startRestartGroup(-69698662);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(aiProvider) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bootstrapManager) ? 32 : 16;
        }
        if ((i2 & 4) != 0) {
            i3 |= 384;
        } else if ((i & 384) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(coroutineScope) ? 256 : 128;
        }
        if ((i2 & 8) != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            i3 |= (i & 4096) == 0 ? composerStartRestartGroup.changed(hermesConfigRepository) : composerStartRestartGroup.changedInstance(hermesConfigRepository) ? 2048 : 1024;
        }
        if ((i2 & 16) != 0) {
            i3 |= 24576;
        } else if ((i & 24576) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(function0) ? 16384 : 8192;
        }
        int i5 = i2 & 32;
        if (i5 == 0) {
            if ((196608 & i) == 0) {
                function03 = function02;
                i3 |= composerStartRestartGroup.changedInstance(function03) ? 131072 : 65536;
            }
            if ((i3 & 74899) == 74898 || !composerStartRestartGroup.getSkipping()) {
                if (i5 == 0) {
                    composerStartRestartGroup.startReplaceGroup(-1024651701);
                    Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                        objRememberedValue5 = new Function0() { // from class: com.hermes.android.NousAuthDialogKt$$ExternalSyntheticLambda0
                            public final Object invoke() {
                                return Unit.INSTANCE;
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    function04 = (Function0) objRememberedValue5;
                } else {
                    function04 = function03;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-69698662, i3, -1, "com.hermes.android.NousAuthDialog (NousAuthDialog.kt:58)");
                }
                ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object objConsume = composerStartRestartGroup.consume(localContext);
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                Context context = (Context) objConsume;
                composerStartRestartGroup.startReplaceGroup(-1024649676);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue = new NousAuthFlow(bootstrapManager, coroutineScope);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                nousAuthFlow = (NousAuthFlow) objRememberedValue;
                composerStartRestartGroup.endReplaceGroup();
                stateCollectAsState = SnapshotStateKt.collectAsState(nousAuthFlow.getState(), null, composerStartRestartGroup, 0, 1);
                composerStartRestartGroup.startReplaceGroup(-1024646133);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                MutableState mutableState = (MutableState) objRememberedValue2;
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.startReplaceGroup(-1024644213);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                MutableState mutableState2 = (MutableState) objRememberedValue3;
                composerStartRestartGroup.endReplaceGroup();
                stateNousAuthDialog$lambda$3 = NousAuthDialog$lambda$3(stateCollectAsState);
                composerStartRestartGroup.startReplaceGroup(-1024638952);
                zChanged = composerStartRestartGroup.changed(stateCollectAsState) | composerStartRestartGroup.changedInstance(coroutineScope) | ((i3 & 7168) != 2048 || ((i3 & 4096) != 0 && composerStartRestartGroup.changedInstance(hermesConfigRepository))) | ((i3 & 14) != 4) | ((458752 & i3) != 131072);
                nousAuthDialogKt$NousAuthDialog$2$1RememberedValue = composerStartRestartGroup.rememberedValue();
                if (!zChanged || nousAuthDialogKt$NousAuthDialog$2$1RememberedValue == Composer.INSTANCE.getEmpty()) {
                    i4 = i3;
                    state = stateCollectAsState;
                    state2 = stateNousAuthDialog$lambda$3;
                    nousAuthDialogKt$NousAuthDialog$2$1RememberedValue = new NousAuthDialogKt$NousAuthDialog$2$1(coroutineScope, stateCollectAsState, hermesConfigRepository, aiProvider, function04, null);
                    composerStartRestartGroup.updateRememberedValue(nousAuthDialogKt$NousAuthDialog$2$1RememberedValue);
                } else {
                    state = stateCollectAsState;
                    i4 = i3;
                    state2 = stateNousAuthDialog$lambda$3;
                }
                composerStartRestartGroup.endReplaceGroup();
                EffectsKt.LaunchedEffect(state2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) nousAuthDialogKt$NousAuthDialog$2$1RememberedValue, composerStartRestartGroup, 0);
                composerStartRestartGroup.startReplaceGroup(-1024610201);
                zChangedInstance = composerStartRestartGroup.changedInstance(nousAuthFlow) | ((i4 & 57344) == 16384);
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (!zChangedInstance || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue4 = new Function0() { // from class: com.hermes.android.NousAuthDialogKt$$ExternalSyntheticLambda1
                        public final Object invoke() {
                            return NousAuthDialogKt.NousAuthDialog$lambda$12$lambda$11(nousAuthFlow, function0);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                Function0 function06 = (Function0) objRememberedValue4;
                composerStartRestartGroup.endReplaceGroup();
                State state3 = state;
                ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-52796846, true, new AnonymousClass4(nousAuthFlow, function0, state3), composerStartRestartGroup, 54);
                Function2<Composer, Integer, Unit> function2M4323getLambda1$app_release = ComposableSingletons$NousAuthDialogKt.INSTANCE.m4323getLambda1$app_release();
                ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-2129430931, true, new AnonymousClass5(nousAuthFlow, context, state3, mutableState, mutableState2), composerStartRestartGroup, 54);
                composer2 = composerStartRestartGroup;
                AndroidAlertDialog_androidKt.AlertDialog-Oix01E0(function06, composableLambdaRememberComposableLambda, (Modifier) null, (Function2) null, (Function2) null, function2M4323getLambda1$app_release, composableLambdaRememberComposableLambda2, (Shape) null, 0L, 0L, 0L, 0L, 0.0f, (DialogProperties) null, composer2, 1769520, 0, 16284);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                function05 = function04;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                function05 = function03;
                composer2 = composerStartRestartGroup;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup == null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.NousAuthDialogKt$$ExternalSyntheticLambda2
                    public final Object invoke(Object obj, Object obj2) {
                        return NousAuthDialogKt.NousAuthDialog$lambda$13(aiProvider, bootstrapManager, coroutineScope, hermesConfigRepository, function0, function05, i, i2, (Composer) obj, ((Integer) obj2).intValue());
                    }
                });
                return;
            }
            return;
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        function03 = function02;
        if ((i3 & 74899) == 74898) {
            if (i5 == 0) {
            }
            if (ComposerKt.isTraceInProgress()) {
            }
            ProvidableCompositionLocal<Context> localContext2 = AndroidCompositionLocals_androidKt.getLocalContext();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume2 = composerStartRestartGroup.consume(localContext2);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            Context context2 = (Context) objConsume2;
            composerStartRestartGroup.startReplaceGroup(-1024649676);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
            }
            nousAuthFlow = (NousAuthFlow) objRememberedValue;
            composerStartRestartGroup.endReplaceGroup();
            stateCollectAsState = SnapshotStateKt.collectAsState(nousAuthFlow.getState(), null, composerStartRestartGroup, 0, 1);
            composerStartRestartGroup.startReplaceGroup(-1024646133);
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
            }
            MutableState mutableState3 = (MutableState) objRememberedValue2;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1024644213);
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
            }
            MutableState mutableState22 = (MutableState) objRememberedValue3;
            composerStartRestartGroup.endReplaceGroup();
            stateNousAuthDialog$lambda$3 = NousAuthDialog$lambda$3(stateCollectAsState);
            composerStartRestartGroup.startReplaceGroup(-1024638952);
            if ((i3 & 7168) != 2048) {
                zChanged = composerStartRestartGroup.changed(stateCollectAsState) | composerStartRestartGroup.changedInstance(coroutineScope) | ((i3 & 7168) != 2048 || ((i3 & 4096) != 0 && composerStartRestartGroup.changedInstance(hermesConfigRepository))) | ((i3 & 14) != 4) | ((458752 & i3) != 131072);
                nousAuthDialogKt$NousAuthDialog$2$1RememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    i4 = i3;
                    state = stateCollectAsState;
                    state2 = stateNousAuthDialog$lambda$3;
                    nousAuthDialogKt$NousAuthDialog$2$1RememberedValue = new NousAuthDialogKt$NousAuthDialog$2$1(coroutineScope, stateCollectAsState, hermesConfigRepository, aiProvider, function04, null);
                    composerStartRestartGroup.updateRememberedValue(nousAuthDialogKt$NousAuthDialog$2$1RememberedValue);
                    composerStartRestartGroup.endReplaceGroup();
                    EffectsKt.LaunchedEffect(state2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) nousAuthDialogKt$NousAuthDialog$2$1RememberedValue, composerStartRestartGroup, 0);
                    composerStartRestartGroup.startReplaceGroup(-1024610201);
                    zChangedInstance = composerStartRestartGroup.changedInstance(nousAuthFlow) | ((i4 & 57344) == 16384);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (!zChangedInstance) {
                        objRememberedValue4 = new Function0() { // from class: com.hermes.android.NousAuthDialogKt$$ExternalSyntheticLambda1
                            public final Object invoke() {
                                return NousAuthDialogKt.NousAuthDialog$lambda$12$lambda$11(nousAuthFlow, function0);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        Function0 function062 = (Function0) objRememberedValue4;
                        composerStartRestartGroup.endReplaceGroup();
                        State state32 = state;
                        ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(-52796846, true, new AnonymousClass4(nousAuthFlow, function0, state32), composerStartRestartGroup, 54);
                        Function2<Composer, Integer, Unit> function2M4323getLambda1$app_release2 = ComposableSingletons$NousAuthDialogKt.INSTANCE.m4323getLambda1$app_release();
                        ComposableLambda composableLambdaRememberComposableLambda22 = ComposableLambdaKt.rememberComposableLambda(-2129430931, true, new AnonymousClass5(nousAuthFlow, context2, state32, mutableState3, mutableState22), composerStartRestartGroup, 54);
                        composer2 = composerStartRestartGroup;
                        AndroidAlertDialog_androidKt.AlertDialog-Oix01E0(function062, composableLambdaRememberComposableLambda3, (Modifier) null, (Function2) null, (Function2) null, function2M4323getLambda1$app_release2, composableLambdaRememberComposableLambda22, (Shape) null, 0L, 0L, 0L, 0L, 0.0f, (DialogProperties) null, composer2, 1769520, 0, 16284);
                        if (ComposerKt.isTraceInProgress()) {
                        }
                        function05 = function04;
                    }
                }
            }
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean NousAuthDialog$lambda$5(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void NousAuthDialog$lambda$6(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean NousAuthDialog$lambda$8(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void NousAuthDialog$lambda$9(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit NousAuthDialog$lambda$12$lambda$11(NousAuthFlow nousAuthFlow, Function0 function0) {
        nousAuthFlow.cancel();
        function0.invoke();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.NousAuthDialogKt$NousAuthDialog$5, reason: invalid class name */
    /* JADX INFO: compiled from: NousAuthDialog.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    static final class AnonymousClass5 implements Function2<Composer, Integer, Unit> {
        final /* synthetic */ MutableState<Boolean> $browserOpened$delegate;
        final /* synthetic */ Context $context;
        final /* synthetic */ NousAuthFlow $flow;
        final /* synthetic */ MutableState<Boolean> $hasStarted$delegate;
        final /* synthetic */ State<NousAuthFlow.State> $state$delegate;

        AnonymousClass5(NousAuthFlow nousAuthFlow, Context context, State<? extends NousAuthFlow.State> state, MutableState<Boolean> mutableState, MutableState<Boolean> mutableState2) {
            this.$flow = nousAuthFlow;
            this.$context = context;
            this.$state$delegate = state;
            this.$hasStarted$delegate = mutableState;
            this.$browserOpened$delegate = mutableState2;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws NoWhenBranchMatchedException {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
        public final void invoke(Composer composer, int i) throws NoWhenBranchMatchedException {
            String strStringResource;
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-2129430931, i, -1, "com.hermes.android.NousAuthDialog.<anonymous> (NousAuthDialog.kt:87)");
                }
                Arrangement.Vertical vertical = Arrangement.INSTANCE.spacedBy-0680j_4(Dp.m3807constructorimpl(12));
                NousAuthFlow nousAuthFlow = this.$flow;
                final Context context = this.$context;
                State<NousAuthFlow.State> state = this.$state$delegate;
                MutableState<Boolean> mutableState = this.$hasStarted$delegate;
                MutableState<Boolean> mutableState2 = this.$browserOpened$delegate;
                ComposerKt.sourceInformationMarkerStart(composer, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                Modifier.Companion companion = Modifier.INSTANCE;
                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(vertical, Alignment.INSTANCE.getStart(), composer, 6);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, companion);
                Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
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
                Composer composerM661constructorimpl = Updater.m661constructorimpl(composer);
                Updater.m668setimpl(composerM661constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m668setimpl(composerM661constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (composerM661constructorimpl.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    composerM661constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    composerM661constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.m668setimpl(composerM661constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                final ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.nous_login_intro, composer, 0), (Modifier) null, ColorKt.Color(4287137960L), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
                final NousAuthFlow.State.AwaitingApproval awaitingApprovalNousAuthDialog$lambda$3 = NousAuthDialogKt.NousAuthDialog$lambda$3(state);
                if (awaitingApprovalNousAuthDialog$lambda$3 instanceof NousAuthFlow.State.Idle) {
                    composer.startReplaceGroup(-1365834904);
                    composer.endReplaceGroup();
                    if (!NousAuthDialogKt.NousAuthDialog$lambda$5(mutableState)) {
                        NousAuthDialogKt.NousAuthDialog$lambda$6(mutableState, true);
                        nousAuthFlow.start();
                    }
                } else if (awaitingApprovalNousAuthDialog$lambda$3 instanceof NousAuthFlow.State.Starting) {
                    composer.startReplaceGroup(-1365596421);
                    Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                    ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                    Modifier.Companion companion2 = Modifier.INSTANCE;
                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer, 48);
                    ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                    CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer, companion2);
                    Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
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
                    Composer composerM661constructorimpl2 = Updater.m661constructorimpl(composer);
                    Updater.m668setimpl(composerM661constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m668setimpl(composerM661constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (composerM661constructorimpl2.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                        composerM661constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                        composerM661constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                    }
                    Updater.m668setimpl(composerM661constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                    ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                    RowScope rowScope = RowScopeInstance.INSTANCE;
                    ProgressIndicatorKt.CircularProgressIndicator-LxG7B9w(SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(20)), 0L, Dp.m3807constructorimpl(2), 0L, 0, composer, 390, 26);
                    SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(10)), composer, 6);
                    TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.oauth_starting, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3072, 0, 131062);
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    composer.endReplaceGroup();
                } else if (awaitingApprovalNousAuthDialog$lambda$3 instanceof NousAuthFlow.State.AwaitingApproval) {
                    composer.startReplaceGroup(-1365088517);
                    NousAuthFlow.State.AwaitingApproval awaitingApproval = awaitingApprovalNousAuthDialog$lambda$3;
                    String verificationUriComplete = awaitingApproval.getVerificationUriComplete();
                    composer.startReplaceGroup(510156720);
                    boolean zChanged = composer.changed(awaitingApprovalNousAuthDialog$lambda$3) | composer.changedInstance(context);
                    Object objRememberedValue = composer.rememberedValue();
                    if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                        objRememberedValue = (Function2) new NousAuthDialogKt$NousAuthDialog$5$1$2$1(awaitingApprovalNousAuthDialog$lambda$3, mutableState2, context, null);
                        composer.updateRememberedValue(objRememberedValue);
                    }
                    composer.endReplaceGroup();
                    EffectsKt.LaunchedEffect(verificationUriComplete, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue, composer, 0);
                    TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.nous_user_code_label, composer, 0), (Modifier) null, ColorKt.Color(4287137960L), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
                    TextKt.Text--4IGK_g(awaitingApproval.getUserCode(), SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, (Object) null), 0L, TextUnitKt.getSp(26), (FontStyle) null, FontWeight.INSTANCE.getBold(), FontFamily.INSTANCE.getMonospace(), 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 199728, 0, 130964);
                    Alignment.Vertical centerVertically2 = Alignment.INSTANCE.getCenterVertically();
                    ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                    Modifier.Companion companion3 = Modifier.INSTANCE;
                    MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically2, composer, 48);
                    ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                    CompositionLocalMap currentCompositionLocalMap3 = composer.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer, companion3);
                    Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
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
                    Composer composerM661constructorimpl3 = Updater.m661constructorimpl(composer);
                    Updater.m668setimpl(composerM661constructorimpl3, measurePolicyRowMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m668setimpl(composerM661constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (composerM661constructorimpl3.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                        composerM661constructorimpl3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
                        composerM661constructorimpl3.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
                    }
                    Updater.m668setimpl(composerM661constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
                    ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                    RowScope rowScope2 = RowScopeInstance.INSTANCE;
                    ProgressIndicatorKt.CircularProgressIndicator-LxG7B9w(SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(20)), ColorKt.Color(4286436348L), Dp.m3807constructorimpl(2), 0L, 0, composer, 438, 24);
                    SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(10)), composer, 6);
                    TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.nous_waiting, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3072, 0, 131062);
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    composer.startReplaceGroup(510201231);
                    boolean zChanged2 = composer.changed(awaitingApprovalNousAuthDialog$lambda$3) | composer.changedInstance(context);
                    Object objRememberedValue2 = composer.rememberedValue();
                    if (zChanged2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                        objRememberedValue2 = new Function0() { // from class: com.hermes.android.NousAuthDialogKt$NousAuthDialog$5$$ExternalSyntheticLambda0
                            public final Object invoke() {
                                return NousAuthDialogKt.AnonymousClass5.invoke$lambda$7$lambda$5$lambda$4(awaitingApprovalNousAuthDialog$lambda$3, columnScope, context);
                            }
                        };
                        composer.updateRememberedValue(objRememberedValue2);
                    }
                    composer.endReplaceGroup();
                    ButtonKt.OutlinedButton((Function0) objRememberedValue2, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, (Object) null), false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$NousAuthDialogKt.INSTANCE.m4324getLambda2$app_release(), composer, 805306416, 508);
                    TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.nous_subscription_hint, composer, 0), (Modifier) null, ColorKt.Color(4287137960L), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
                    composer.endReplaceGroup();
                } else if (awaitingApprovalNousAuthDialog$lambda$3 instanceof NousAuthFlow.State.Success) {
                    composer.startReplaceGroup(-1362654676);
                    Alignment.Vertical centerVertically3 = Alignment.INSTANCE.getCenterVertically();
                    ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                    Modifier.Companion companion4 = Modifier.INSTANCE;
                    MeasurePolicy measurePolicyRowMeasurePolicy3 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically3, composer, 48);
                    ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                    int currentCompositeKeyHash4 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                    CompositionLocalMap currentCompositionLocalMap4 = composer.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composer, companion4);
                    Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                    ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                    if (!(composer.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composer.startReusableNode();
                    if (composer.getInserting()) {
                        composer.createNode(constructor4);
                    } else {
                        composer.useNode();
                    }
                    Composer composerM661constructorimpl4 = Updater.m661constructorimpl(composer);
                    Updater.m668setimpl(composerM661constructorimpl4, measurePolicyRowMeasurePolicy3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m668setimpl(composerM661constructorimpl4, currentCompositionLocalMap4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (composerM661constructorimpl4.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash4))) {
                        composerM661constructorimpl4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash4));
                        composerM661constructorimpl4.apply(Integer.valueOf(currentCompositeKeyHash4), setCompositeKeyHash4);
                    }
                    Updater.m668setimpl(composerM661constructorimpl4, modifierMaterializeModifier4, ComposeUiNode.INSTANCE.getSetModifier());
                    ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                    RowScope rowScope3 = RowScopeInstance.INSTANCE;
                    IconKt.Icon-ww6aTOc(CheckCircleKt.getCheckCircle(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, ColorKt.Color(4280468830L), composer, 3120, 4);
                    SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(8)), composer, 6);
                    TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.oauth_success, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 199680, 0, 131030);
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    composer.endReplaceGroup();
                } else {
                    if (!(awaitingApprovalNousAuthDialog$lambda$3 instanceof NousAuthFlow.State.Failed)) {
                        composer.startReplaceGroup(510131722);
                        composer.endReplaceGroup();
                        throw new NoWhenBranchMatchedException();
                    }
                    composer.startReplaceGroup(-1362207594);
                    NousAuthFlow.State.Failed failed = (NousAuthFlow.State.Failed) awaitingApprovalNousAuthDialog$lambda$3;
                    if (Intrinsics.areEqual(failed.getMessage(), "expired")) {
                        composer.startReplaceGroup(510249644);
                        strStringResource = StringResources_androidKt.stringResource(R.string.nous_expired, composer, 0);
                        composer.endReplaceGroup();
                    } else {
                        composer.startReplaceGroup(510251927);
                        strStringResource = StringResources_androidKt.stringResource(R.string.oauth_failed, new Object[]{failed.getMessage()}, composer, 0);
                        composer.endReplaceGroup();
                    }
                    TextKt.Text--4IGK_g(strStringResource, (Modifier) null, ColorKt.Color(4294747557L), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
                    composer.endReplaceGroup();
                }
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
        public static final Unit invoke$lambda$7$lambda$5$lambda$4(NousAuthFlow.State state, ColumnScope columnScope, Context context) {
            Intent intentAddFlags = new Intent("android.intent.action.VIEW", Uri.parse(((NousAuthFlow.State.AwaitingApproval) state).getVerificationUriComplete())).addFlags(268435456);
            Intrinsics.checkNotNullExpressionValue(intentAddFlags, "addFlags(...)");
            try {
                Result.Companion companion = Result.Companion;
                context.startActivity(intentAddFlags);
                Result.constructor-impl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                Result.constructor-impl(ResultKt.createFailure(th));
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.NousAuthDialogKt$NousAuthDialog$4, reason: invalid class name */
    /* JADX INFO: compiled from: NousAuthDialog.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    static final class AnonymousClass4 implements Function2<Composer, Integer, Unit> {
        final /* synthetic */ NousAuthFlow $flow;
        final /* synthetic */ Function0<Unit> $onDismiss;
        final /* synthetic */ State<NousAuthFlow.State> $state$delegate;

        AnonymousClass4(NousAuthFlow nousAuthFlow, Function0<Unit> function0, State<? extends NousAuthFlow.State> state) {
            this.$flow = nousAuthFlow;
            this.$onDismiss = function0;
            this.$state$delegate = state;
        }

        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-52796846, i, -1, "com.hermes.android.NousAuthDialog.<anonymous> (NousAuthDialog.kt:165)");
                }
                final boolean z = (NousAuthDialogKt.NousAuthDialog$lambda$3(this.$state$delegate) instanceof NousAuthFlow.State.Success) || (NousAuthDialogKt.NousAuthDialog$lambda$3(this.$state$delegate) instanceof NousAuthFlow.State.Failed);
                composer.startReplaceGroup(-1410473978);
                boolean zChangedInstance = composer.changedInstance(this.$flow) | composer.changed(this.$onDismiss);
                final NousAuthFlow nousAuthFlow = this.$flow;
                final Function0<Unit> function0 = this.$onDismiss;
                Object objRememberedValue = composer.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: com.hermes.android.NousAuthDialogKt$NousAuthDialog$4$$ExternalSyntheticLambda0
                        public final Object invoke() {
                            return NousAuthDialogKt.AnonymousClass4.invoke$lambda$1$lambda$0(nousAuthFlow, function0);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue);
                }
                composer.endReplaceGroup();
                ButtonKt.TextButton((Function0) objRememberedValue, (Modifier) null, false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(960996853, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.NousAuthDialogKt.NousAuthDialog.4.2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                        invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(RowScope rowScope, Composer composer2, int i2) {
                        Intrinsics.checkNotNullParameter(rowScope, "$this$TextButton");
                        if ((i2 & 17) == 16 && composer2.getSkipping()) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(960996853, i2, -1, "com.hermes.android.NousAuthDialog.<anonymous>.<anonymous> (NousAuthDialog.kt:167)");
                        }
                        TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(z ? R.string.oauth_btn_done : R.string.btn_cancel, composer2, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 0, 0, 131070);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, composer, 54), composer, 805306368, 510);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$1$lambda$0(NousAuthFlow nousAuthFlow, Function0 function0) {
            nousAuthFlow.cancel();
            function0.invoke();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NousAuthFlow.State NousAuthDialog$lambda$3(State<? extends NousAuthFlow.State> state) {
        return state.getValue();
    }
}
