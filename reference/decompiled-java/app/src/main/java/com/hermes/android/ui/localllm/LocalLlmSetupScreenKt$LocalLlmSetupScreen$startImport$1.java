package com.hermes.android.ui.localllm;

import android.content.Context;
import android.net.Uri;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.LocalLlmModuleBridge;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$startImport$1", f = "LocalLlmSetupScreen.kt", i = {}, l = {451}, m = "invokeSuspend", n = {}, s = {})
final class LocalLlmSetupScreenKt$LocalLlmSetupScreen$startImport$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<String> $busyLabel$delegate;
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableState<Job> $dlJob$delegate;
    final /* synthetic */ MutableState<ModelDownloadState> $dlState$delegate;
    final /* synthetic */ MutableState<DlTarget> $dlTarget$delegate;
    final /* synthetic */ MutableState<String> $errorText$delegate;
    final /* synthetic */ Function1<Continuation<? super Unit>, Object> $onActivated;
    final /* synthetic */ Function0<Unit> $onBack;
    final /* synthetic */ MutableIntState $refreshKey$delegate;
    final /* synthetic */ MutableState<Function0<Unit>> $retryAction$delegate;
    final /* synthetic */ CoroutineScope $scope;
    final /* synthetic */ MutableState<Boolean> $showPicker$delegate;
    final /* synthetic */ String $strFailedChecksum;
    final /* synthetic */ String $strFailedFormat;
    final /* synthetic */ String $strFailedLoad;
    final /* synthetic */ String $strFailedNetwork;
    final /* synthetic */ String $strFailedRate;
    final /* synthetic */ String $strFailedStorage;
    final /* synthetic */ String $strFailedUnknown;
    final /* synthetic */ String $strStarting;
    final /* synthetic */ Uri $uri;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalLlmSetupScreenKt$LocalLlmSetupScreen$startImport$1(Context context, Uri uri, String str, CoroutineScope coroutineScope, MutableState<String> mutableState, MutableState<Boolean> mutableState2, MutableState<DlTarget> mutableState3, MutableState<Job> mutableState4, MutableState<ModelDownloadState> mutableState5, MutableIntState mutableIntState, String str2, Function0<Unit> function0, String str3, MutableState<String> mutableState6, Function1<? super Continuation<? super Unit>, ? extends Object> function1, String str4, String str5, String str6, String str7, String str8, MutableState<Function0<Unit>> mutableState7, Continuation<? super LocalLlmSetupScreenKt$LocalLlmSetupScreen$startImport$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$uri = uri;
        this.$strFailedUnknown = str;
        this.$scope = coroutineScope;
        this.$errorText$delegate = mutableState;
        this.$showPicker$delegate = mutableState2;
        this.$dlTarget$delegate = mutableState3;
        this.$dlJob$delegate = mutableState4;
        this.$dlState$delegate = mutableState5;
        this.$refreshKey$delegate = mutableIntState;
        this.$strStarting = str2;
        this.$onBack = function0;
        this.$strFailedLoad = str3;
        this.$busyLabel$delegate = mutableState6;
        this.$onActivated = function1;
        this.$strFailedNetwork = str4;
        this.$strFailedStorage = str5;
        this.$strFailedChecksum = str6;
        this.$strFailedFormat = str7;
        this.$strFailedRate = str8;
        this.$retryAction$delegate = mutableState7;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalLlmSetupScreenKt$LocalLlmSetupScreen$startImport$1(this.$context, this.$uri, this.$strFailedUnknown, this.$scope, this.$errorText$delegate, this.$showPicker$delegate, this.$dlTarget$delegate, this.$dlJob$delegate, this.$dlState$delegate, this.$refreshKey$delegate, this.$strStarting, this.$onBack, this.$strFailedLoad, this.$busyLabel$delegate, this.$onActivated, this.$strFailedNetwork, this.$strFailedStorage, this.$strFailedChecksum, this.$strFailedFormat, this.$strFailedRate, this.$retryAction$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object objWithContext;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new LocalLlmSetupScreenKt$LocalLlmSetupScreen$startImport$1$name$1(this.$context, this.$uri, null), (Continuation) this);
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            objWithContext = obj;
        }
        String strImportedModelDefaultName = (String) objWithContext;
        if (strImportedModelDefaultName == null) {
            strImportedModelDefaultName = LocalLlmModuleBridge.INSTANCE.importedModelDefaultName();
        }
        String str = this.$strFailedUnknown;
        CoroutineScope coroutineScope = this.$scope;
        MutableState<String> mutableState = this.$errorText$delegate;
        MutableState<Boolean> mutableState2 = this.$showPicker$delegate;
        MutableState<DlTarget> mutableState3 = this.$dlTarget$delegate;
        MutableState<Job> mutableState4 = this.$dlJob$delegate;
        MutableState<ModelDownloadState> mutableState5 = this.$dlState$delegate;
        MutableIntState mutableIntState = this.$refreshKey$delegate;
        String str2 = this.$strStarting;
        Function0<Unit> function0 = this.$onBack;
        String str3 = this.$strFailedLoad;
        MutableState<String> mutableState6 = this.$busyLabel$delegate;
        Context context = this.$context;
        Function1<Continuation<? super Unit>, Object> function1 = this.$onActivated;
        String str4 = this.$strFailedNetwork;
        String str5 = this.$strFailedStorage;
        String str6 = this.$strFailedChecksum;
        String str7 = this.$strFailedFormat;
        String str8 = this.$strFailedRate;
        MutableState<Function0<Unit>> mutableState7 = this.$retryAction$delegate;
        Flow flowImportModelFromUri = LocalLlmModuleBridge.INSTANCE.importModelFromUri(this.$context, this.$uri, strImportedModelDefaultName);
        DlTarget dlTarget = DlTarget.GGUF;
        final Uri uri = this.$uri;
        final CoroutineScope coroutineScope2 = this.$scope;
        final Context context2 = this.$context;
        final String str9 = this.$strFailedUnknown;
        final MutableState<String> mutableState8 = this.$errorText$delegate;
        final MutableState<Boolean> mutableState9 = this.$showPicker$delegate;
        final MutableState<DlTarget> mutableState10 = this.$dlTarget$delegate;
        final MutableState<Job> mutableState11 = this.$dlJob$delegate;
        final MutableState<ModelDownloadState> mutableState12 = this.$dlState$delegate;
        final MutableIntState mutableIntState2 = this.$refreshKey$delegate;
        final String str10 = this.$strStarting;
        final Function0<Unit> function02 = this.$onBack;
        final String str11 = this.$strFailedLoad;
        final MutableState<String> mutableState13 = this.$busyLabel$delegate;
        final Function1<Continuation<? super Unit>, Object> function12 = this.$onActivated;
        final String str12 = this.$strFailedNetwork;
        final String str13 = this.$strFailedStorage;
        final String str14 = this.$strFailedChecksum;
        final String str15 = this.$strFailedFormat;
        final String str16 = this.$strFailedRate;
        final MutableState<Function0<Unit>> mutableState14 = this.$retryAction$delegate;
        LocalLlmSetupScreenKt.LocalLlmSetupScreen$collectDownload(str, coroutineScope, mutableState, mutableState2, mutableState3, mutableState4, mutableState5, mutableIntState, str2, function0, str3, mutableState6, context, function1, str4, str5, str6, str7, str8, mutableState7, flowImportModelFromUri, dlTarget, new Function0() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$startImport$1$$ExternalSyntheticLambda0
            public final Object invoke() {
                return LocalLlmSetupScreenKt$LocalLlmSetupScreen$startImport$1.invokeSuspend$lambda$0(uri, coroutineScope2, context2, str9, mutableState8, mutableState9, mutableState10, mutableState11, mutableState12, mutableIntState2, str10, function02, str11, mutableState13, function12, str12, str13, str14, str15, str16, mutableState14);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokeSuspend$lambda$0(Uri uri, CoroutineScope coroutineScope, Context context, String str, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, MutableIntState mutableIntState, String str2, Function0 function0, String str3, MutableState mutableState6, Function1 function1, String str4, String str5, String str6, String str7, String str8, MutableState mutableState7) {
        LocalLlmSetupScreenKt.LocalLlmSetupScreen$startImport(coroutineScope, context, str, mutableState, mutableState2, mutableState3, mutableState4, mutableState5, mutableIntState, str2, function0, str3, mutableState6, function1, str4, str5, str6, str7, str8, mutableState7, uri);
        return Unit.INSTANCE;
    }
}
