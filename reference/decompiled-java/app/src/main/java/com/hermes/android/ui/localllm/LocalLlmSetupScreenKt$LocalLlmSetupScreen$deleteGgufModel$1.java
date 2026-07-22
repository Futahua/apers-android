package com.hermes.android.ui.localllm;

import android.content.Context;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1", f = "LocalLlmSetupScreen.kt", i = {0}, l = {367}, m = "invokeSuspend", n = {"deleteFailed"}, s = {"L$0"})
final class LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<String> $busyLabel$delegate;
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableState<String> $errorText$delegate;
    final /* synthetic */ MutableIntState $refreshKey$delegate;
    final /* synthetic */ String $strDeleteFailed;
    final /* synthetic */ String $strDeleting;
    final /* synthetic */ String $strEngineBusy;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1(String str, String str2, String str3, MutableState<String> mutableState, MutableState<String> mutableState2, Context context, MutableIntState mutableIntState, Continuation<? super LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1> continuation) {
        super(2, continuation);
        this.$strDeleting = str;
        this.$strDeleteFailed = str2;
        this.$strEngineBusy = str3;
        this.$busyLabel$delegate = mutableState;
        this.$errorText$delegate = mutableState2;
        this.$context = context;
        this.$refreshKey$delegate = mutableIntState;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1(this.$strDeleting, this.$strDeleteFailed, this.$strEngineBusy, this.$busyLabel$delegate, this.$errorText$delegate, this.$context, this.$refreshKey$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Ref.BooleanRef booleanRef;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.$busyLabel$delegate.setValue(this.$strDeleting);
            this.$errorText$delegate.setValue(null);
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            this.L$0 = booleanRef2;
            this.label = 1;
            Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1$ok$1(this.$context, booleanRef2, null), (Continuation) this);
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
            booleanRef = booleanRef2;
            obj = objWithContext;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            booleanRef = (Ref.BooleanRef) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        this.$busyLabel$delegate.setValue(null);
        if (!zBooleanValue) {
            this.$errorText$delegate.setValue(booleanRef.element ? this.$strDeleteFailed : this.$strEngineBusy);
        }
        this.$refreshKey$delegate.setIntValue(LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$5(this.$refreshKey$delegate) + 1);
        return Unit.INSTANCE;
    }
}
