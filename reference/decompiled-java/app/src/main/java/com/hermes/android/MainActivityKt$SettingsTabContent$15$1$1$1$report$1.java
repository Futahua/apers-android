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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/hermes/android/BootstrapManager$HealthReport;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$15$1$1$1$report$1", f = "MainActivity.kt", i = {}, l = {3401}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$SettingsTabContent$15$1$1$1$report$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super BootstrapManager.HealthReport>, Object> {
    final /* synthetic */ BootstrapManager $bootstrapManager;
    final /* synthetic */ MutableState<BootstrapManager.Progress> $repairProgress$delegate;
    final /* synthetic */ LifecycleCoroutineScope $scope;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$SettingsTabContent$15$1$1$1$report$1(BootstrapManager bootstrapManager, LifecycleCoroutineScope lifecycleCoroutineScope, MutableState<BootstrapManager.Progress> mutableState, Continuation<? super MainActivityKt$SettingsTabContent$15$1$1$1$report$1> continuation) {
        super(2, continuation);
        this.$bootstrapManager = bootstrapManager;
        this.$scope = lifecycleCoroutineScope;
        this.$repairProgress$delegate = mutableState;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$SettingsTabContent$15$1$1$1$report$1(this.$bootstrapManager, this.$scope, this.$repairProgress$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super BootstrapManager.HealthReport> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            BootstrapManager bootstrapManager = this.$bootstrapManager;
            final LifecycleCoroutineScope lifecycleCoroutineScope = this.$scope;
            final MutableState<BootstrapManager.Progress> mutableState = this.$repairProgress$delegate;
            this.label = 1;
            if (bootstrapManager.fullReinstall(new Function1() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$15$1$1$1$report$1$$ExternalSyntheticLambda0
                public final Object invoke(Object obj2) {
                    return MainActivityKt$SettingsTabContent$15$1$1$1$report$1.invokeSuspend$lambda$0(lifecycleCoroutineScope, mutableState, (BootstrapManager.Progress) obj2);
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
        return this.$bootstrapManager.healthCheck();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokeSuspend$lambda$0(LifecycleCoroutineScope lifecycleCoroutineScope, MutableState mutableState, BootstrapManager.Progress progress) {
        BuildersKt.launch$default(lifecycleCoroutineScope, Dispatchers.getMain(), (CoroutineStart) null, new MainActivityKt$SettingsTabContent$15$1$1$1$report$1$1$1(progress, mutableState, null), 2, (Object) null);
        return Unit.INSTANCE;
    }
}
