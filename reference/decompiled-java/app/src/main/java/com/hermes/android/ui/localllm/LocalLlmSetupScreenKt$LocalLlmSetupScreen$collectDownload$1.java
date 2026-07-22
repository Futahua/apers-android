package com.hermes.android.ui.localllm;

import android.content.Context;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.llama.BackendPreference;
import com.hermes.android.llama.ModelDownloadState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1", f = "LocalLlmSetupScreen.kt", i = {}, l = {403}, m = "invokeSuspend", n = {}, s = {})
final class LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<String> $busyLabel$delegate;
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableState<ModelDownloadState> $dlState$delegate;
    final /* synthetic */ MutableState<DlTarget> $dlTarget$delegate;
    final /* synthetic */ MutableState<String> $errorText$delegate;
    final /* synthetic */ Flow<ModelDownloadState> $flow;
    final /* synthetic */ Function1<Continuation<? super Unit>, Object> $onActivated;
    final /* synthetic */ Function0<Unit> $onBack;
    final /* synthetic */ MutableIntState $refreshKey$delegate;
    final /* synthetic */ Function0<Unit> $retry;
    final /* synthetic */ MutableState<Function0<Unit>> $retryAction$delegate;
    final /* synthetic */ CoroutineScope $scope;
    final /* synthetic */ String $strFailedChecksum;
    final /* synthetic */ String $strFailedFormat;
    final /* synthetic */ String $strFailedLoad;
    final /* synthetic */ String $strFailedNetwork;
    final /* synthetic */ String $strFailedRate;
    final /* synthetic */ String $strFailedStorage;
    final /* synthetic */ String $strFailedUnknown;
    final /* synthetic */ String $strStarting;
    final /* synthetic */ DlTarget $target;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1(Flow<? extends ModelDownloadState> flow, DlTarget dlTarget, Function0<Unit> function0, MutableState<ModelDownloadState> mutableState, MutableState<DlTarget> mutableState2, MutableIntState mutableIntState, CoroutineScope coroutineScope, String str, Function0<Unit> function02, String str2, MutableState<String> mutableState3, MutableState<String> mutableState4, Context context, Function1<? super Continuation<? super Unit>, ? extends Object> function1, String str3, String str4, String str5, String str6, String str7, String str8, MutableState<Function0<Unit>> mutableState5, Continuation<? super LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1> continuation) {
        super(2, continuation);
        this.$flow = flow;
        this.$target = dlTarget;
        this.$retry = function0;
        this.$dlState$delegate = mutableState;
        this.$dlTarget$delegate = mutableState2;
        this.$refreshKey$delegate = mutableIntState;
        this.$scope = coroutineScope;
        this.$strStarting = str;
        this.$onBack = function02;
        this.$strFailedLoad = str2;
        this.$busyLabel$delegate = mutableState3;
        this.$errorText$delegate = mutableState4;
        this.$context = context;
        this.$onActivated = function1;
        this.$strFailedNetwork = str3;
        this.$strFailedStorage = str4;
        this.$strFailedChecksum = str5;
        this.$strFailedFormat = str6;
        this.$strFailedRate = str7;
        this.$strFailedUnknown = str8;
        this.$retryAction$delegate = mutableState5;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1(this.$flow, this.$target, this.$retry, this.$dlState$delegate, this.$dlTarget$delegate, this.$refreshKey$delegate, this.$scope, this.$strStarting, this.$onBack, this.$strFailedLoad, this.$busyLabel$delegate, this.$errorText$delegate, this.$context, this.$onActivated, this.$strFailedNetwork, this.$strFailedStorage, this.$strFailedChecksum, this.$strFailedFormat, this.$strFailedRate, this.$strFailedUnknown, this.$retryAction$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Flow<ModelDownloadState> flow = this.$flow;
            final DlTarget dlTarget = this.$target;
            final Function0<Unit> function0 = this.$retry;
            final MutableState<ModelDownloadState> mutableState = this.$dlState$delegate;
            final MutableState<DlTarget> mutableState2 = this.$dlTarget$delegate;
            final MutableIntState mutableIntState = this.$refreshKey$delegate;
            final CoroutineScope coroutineScope = this.$scope;
            final String str = this.$strStarting;
            final Function0<Unit> function02 = this.$onBack;
            final String str2 = this.$strFailedLoad;
            final MutableState<String> mutableState3 = this.$busyLabel$delegate;
            final MutableState<String> mutableState4 = this.$errorText$delegate;
            final Context context = this.$context;
            final Function1<Continuation<? super Unit>, Object> function1 = this.$onActivated;
            final String str3 = this.$strFailedNetwork;
            final String str4 = this.$strFailedStorage;
            final String str5 = this.$strFailedChecksum;
            final String str6 = this.$strFailedFormat;
            final String str7 = this.$strFailedRate;
            final String str8 = this.$strFailedUnknown;
            final MutableState<Function0<Unit>> mutableState5 = this.$retryAction$delegate;
            this.label = 1;
            if (flow.collect(new FlowCollector() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1.1
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((ModelDownloadState) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(ModelDownloadState modelDownloadState, Continuation<? super Unit> continuation) {
                    mutableState.setValue(modelDownloadState);
                    if (!(modelDownloadState instanceof ModelDownloadState.Ready)) {
                        if (modelDownloadState instanceof ModelDownloadState.Failed) {
                            mutableState.setValue(null);
                            mutableState2.setValue(null);
                            mutableState4.setValue(LocalLlmSetupScreenKt.LocalLlmSetupScreen$failureText(str3, str4, str5, str6, str7, str8, ((ModelDownloadState.Failed) modelDownloadState).getReason()));
                            mutableState5.setValue(function0);
                        }
                    } else {
                        mutableState.setValue(null);
                        mutableState2.setValue(null);
                        mutableIntState.setIntValue(LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$5(mutableIntState) + 1);
                        if (dlTarget == DlTarget.NPU_BUNDLE) {
                            LocalLlmSetupScreenKt.LocalLlmSetupScreen$activateEngine(coroutineScope, str, function02, str2, mutableState3, mutableState4, context, function1, mutableIntState, BackendPreference.VALUE_NPU, (1024 & 1024) != 0 ? false : false);
                        }
                    }
                    return Unit.INSTANCE;
                }
            }, (Continuation) this) == coroutine_suspended) {
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
