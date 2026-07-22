package com.hermes.android;

import androidx.compose.runtime.MutableState;
import androidx.lifecycle.LifecycleCoroutineScope;
import com.hermes.android.BootstrapManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$15$1$1$1", f = "MainActivity.kt", i = {}, l = {3400}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$SettingsTabContent$15$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ BootstrapManager $bootstrapManager;
    final /* synthetic */ MutableState<BootstrapManager.HealthReport> $healthReport$delegate;
    final /* synthetic */ MutableState<String> $repairError$delegate;
    final /* synthetic */ MutableState<BootstrapManager.Progress> $repairProgress$delegate;
    final /* synthetic */ LifecycleCoroutineScope $scope;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$SettingsTabContent$15$1$1$1(BootstrapManager bootstrapManager, LifecycleCoroutineScope lifecycleCoroutineScope, MutableState<BootstrapManager.Progress> mutableState, MutableState<BootstrapManager.HealthReport> mutableState2, MutableState<String> mutableState3, Continuation<? super MainActivityKt$SettingsTabContent$15$1$1$1> continuation) {
        super(2, continuation);
        this.$bootstrapManager = bootstrapManager;
        this.$scope = lifecycleCoroutineScope;
        this.$repairProgress$delegate = mutableState;
        this.$healthReport$delegate = mutableState2;
        this.$repairError$delegate = mutableState3;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$SettingsTabContent$15$1$1$1(this.$bootstrapManager, this.$scope, this.$repairProgress$delegate, this.$healthReport$delegate, this.$repairError$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = BuildersKt.withContext(Dispatchers.getIO(), new MainActivityKt$SettingsTabContent$15$1$1$1$report$1(this.$bootstrapManager, this.$scope, this.$repairProgress$delegate, null), (Continuation) this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            this.$repairProgress$delegate.setValue(null);
            this.$healthReport$delegate.setValue((BootstrapManager.HealthReport) obj);
        } catch (Exception e) {
            MutableState<String> mutableState = this.$repairError$delegate;
            String message = e.getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            MainActivityKt.SettingsTabContent$lambda$218(mutableState, message);
            this.$repairProgress$delegate.setValue(null);
        }
        return Unit.INSTANCE;
    }
}
