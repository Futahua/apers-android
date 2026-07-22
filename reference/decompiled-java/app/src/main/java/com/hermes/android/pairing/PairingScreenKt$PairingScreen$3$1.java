package com.hermes.android.pairing;

import androidx.compose.runtime.State;
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
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: compiled from: PairingScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.pairing.PairingScreenKt$PairingScreen$3$1", f = "PairingScreen.kt", i = {}, l = {42}, m = "invokeSuspend", n = {}, s = {})
final class PairingScreenKt$PairingScreen$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $onConfigReceived;
    final /* synthetic */ State<PairingUiState> $state$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PairingScreenKt$PairingScreen$3$1(Function0<Unit> function0, State<PairingUiState> state, Continuation<? super PairingScreenKt$PairingScreen$3$1> continuation) {
        super(2, continuation);
        this.$onConfigReceived = function0;
        this.$state$delegate = state;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PairingScreenKt$PairingScreen$3$1(this.$onConfigReceived, this.$state$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (PairingScreenKt.PairingScreen$lambda$2(this.$state$delegate).getConfigReceived()) {
                this.label = 1;
                if (DelayKt.delay(1500L, (Continuation) this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        this.$onConfigReceived.invoke();
        return Unit.INSTANCE;
    }
}
