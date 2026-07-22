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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1", f = "LocalLlmSetupScreen.kt", i = {}, l = {297}, m = "invokeSuspend", n = {}, s = {})
final class LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $backendValue;
    final /* synthetic */ MutableState<String> $busyLabel$delegate;
    final /* synthetic */ boolean $closeOnSuccess;
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableState<String> $errorText$delegate;
    final /* synthetic */ Function1<Continuation<? super Unit>, Object> $onActivated;
    final /* synthetic */ Function0<Unit> $onBack;
    final /* synthetic */ MutableIntState $refreshKey$delegate;
    final /* synthetic */ String $strFailedLoad;
    final /* synthetic */ String $strStarting;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1(String str, boolean z, Function0<Unit> function0, String str2, MutableState<String> mutableState, MutableState<String> mutableState2, Context context, String str3, Function1<? super Continuation<? super Unit>, ? extends Object> function1, MutableIntState mutableIntState, Continuation<? super LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1> continuation) {
        super(2, continuation);
        this.$strStarting = str;
        this.$closeOnSuccess = z;
        this.$onBack = function0;
        this.$strFailedLoad = str2;
        this.$busyLabel$delegate = mutableState;
        this.$errorText$delegate = mutableState2;
        this.$context = context;
        this.$backendValue = str3;
        this.$onActivated = function1;
        this.$refreshKey$delegate = mutableIntState;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1(this.$strStarting, this.$closeOnSuccess, this.$onBack, this.$strFailedLoad, this.$busyLabel$delegate, this.$errorText$delegate, this.$context, this.$backendValue, this.$onActivated, this.$refreshKey$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.$busyLabel$delegate.setValue(this.$strStarting);
            this.$errorText$delegate.setValue(null);
            this.label = 1;
            obj = LocalLlmSetupScreenKt.sequenceActivation(new LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1(this.$context, this.$backendValue, null), new LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$2(this.$onActivated, null), (Continuation) this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        this.$busyLabel$delegate.setValue(null);
        if (zBooleanValue) {
            if (this.$closeOnSuccess) {
                this.$onBack.invoke();
                return Unit.INSTANCE;
            }
        } else {
            this.$errorText$delegate.setValue(this.$strFailedLoad);
        }
        this.$refreshKey$delegate.setIntValue(LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$5(this.$refreshKey$delegate) + 1);
        return Unit.INSTANCE;
    }
}
