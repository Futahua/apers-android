package com.hermes.android;

import androidx.appcompat.app.AppCompatActivity;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$8$1$6$4$1$1", f = "MainActivity.kt", i = {}, l = {2764}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$SettingsTabContent$8$1$6$4$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ BootstrapManager $bootstrapManager;
    final /* synthetic */ MutableState<Boolean> $isUpdating$delegate;
    final /* synthetic */ LifecycleCoroutineScope $scope;
    final /* synthetic */ MutableState<BootstrapManager.UpdateInfo> $updateInfo$delegate;
    final /* synthetic */ MutableState<String> $updateProgress$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$SettingsTabContent$8$1$6$4$1$1(BootstrapManager bootstrapManager, LifecycleCoroutineScope lifecycleCoroutineScope, MutableState<String> mutableState, AppCompatActivity appCompatActivity, MutableState<Boolean> mutableState2, MutableState<BootstrapManager.UpdateInfo> mutableState3, Continuation<? super MainActivityKt$SettingsTabContent$8$1$6$4$1$1> continuation) {
        super(2, continuation);
        this.$bootstrapManager = bootstrapManager;
        this.$scope = lifecycleCoroutineScope;
        this.$updateProgress$delegate = mutableState;
        this.$activity = appCompatActivity;
        this.$isUpdating$delegate = mutableState2;
        this.$updateInfo$delegate = mutableState3;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$SettingsTabContent$8$1$6$4$1$1(this.$bootstrapManager, this.$scope, this.$updateProgress$delegate, this.$activity, this.$isUpdating$delegate, this.$updateInfo$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            BootstrapManager bootstrapManager = this.$bootstrapManager;
            final LifecycleCoroutineScope lifecycleCoroutineScope = this.$scope;
            final MutableState<String> mutableState = this.$updateProgress$delegate;
            boolean zPerformUpdate = bootstrapManager.performUpdate(new Function1() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$6$4$1$1$$ExternalSyntheticLambda0
                public final Object invoke(Object obj2) {
                    return MainActivityKt$SettingsTabContent$8$1$6$4$1$1.invokeSuspend$lambda$0(lifecycleCoroutineScope, mutableState, (String) obj2);
                }
            });
            BootstrapManager.UpdateInfo updateInfoCheckForUpdate = zPerformUpdate ? this.$bootstrapManager.checkForUpdate() : null;
            this.label = 1;
            if (BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass1(zPerformUpdate, updateInfoCheckForUpdate, this.$activity, this.$isUpdating$delegate, this.$updateInfo$delegate, this.$updateProgress$delegate, null), (Continuation) this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokeSuspend$lambda$0(LifecycleCoroutineScope lifecycleCoroutineScope, MutableState mutableState, String str) {
        BuildersKt.launch$default(lifecycleCoroutineScope, Dispatchers.getMain(), (CoroutineStart) null, new MainActivityKt$SettingsTabContent$8$1$6$4$1$1$ok$1$1(str, mutableState, null), 2, (Object) null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$6$4$1$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$8$1$6$4$1$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AppCompatActivity $activity;
        final /* synthetic */ MutableState<Boolean> $isUpdating$delegate;
        final /* synthetic */ BootstrapManager.UpdateInfo $newInfo;
        final /* synthetic */ boolean $ok;
        final /* synthetic */ MutableState<BootstrapManager.UpdateInfo> $updateInfo$delegate;
        final /* synthetic */ MutableState<String> $updateProgress$delegate;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z, BootstrapManager.UpdateInfo updateInfo, AppCompatActivity appCompatActivity, MutableState<Boolean> mutableState, MutableState<BootstrapManager.UpdateInfo> mutableState2, MutableState<String> mutableState3, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$ok = z;
            this.$newInfo = updateInfo;
            this.$activity = appCompatActivity;
            this.$isUpdating$delegate = mutableState;
            this.$updateInfo$delegate = mutableState2;
            this.$updateProgress$delegate = mutableState3;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$ok, this.$newInfo, this.$activity, this.$isUpdating$delegate, this.$updateInfo$delegate, this.$updateProgress$delegate, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                MainActivityKt.SettingsTabContent$lambda$233(this.$isUpdating$delegate, false);
                if (this.$ok) {
                    this.$updateInfo$delegate.setValue(this.$newInfo);
                    this.$updateProgress$delegate.setValue(this.$activity.getString(R.string.settings_update_complete));
                } else {
                    this.$updateProgress$delegate.setValue(this.$activity.getString(R.string.settings_update_failed));
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
