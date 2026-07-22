package com.hermes.android;

import androidx.compose.runtime.MutableState;
import androidx.core.os.EnvironmentCompat;
import androidx.lifecycle.LifecycleCoroutineScope;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$7$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$SettingsTabContent$7$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ BootstrapManager $bootstrapManager;
    final /* synthetic */ MutableState<String> $hermesVersion;
    final /* synthetic */ LifecycleCoroutineScope $scope;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$SettingsTabContent$7$1(LifecycleCoroutineScope lifecycleCoroutineScope, MutableState<String> mutableState, BootstrapManager bootstrapManager, Continuation<? super MainActivityKt$SettingsTabContent$7$1> continuation) {
        super(2, continuation);
        this.$scope = lifecycleCoroutineScope;
        this.$hermesVersion = mutableState;
        this.$bootstrapManager = bootstrapManager;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$SettingsTabContent$7$1(this.$scope, this.$hermesVersion, this.$bootstrapManager, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$SettingsTabContent$7$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$7$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ BootstrapManager $bootstrapManager;
        final /* synthetic */ MutableState<String> $hermesVersion;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MutableState<String> mutableState, BootstrapManager bootstrapManager, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$hermesVersion = mutableState;
            this.$bootstrapManager = bootstrapManager;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$hermesVersion, this.$bootstrapManager, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            MutableState<String> mutableState = this.$hermesVersion;
            String installedVersion = this.$bootstrapManager.getInstalledVersion();
            if (Intrinsics.areEqual(installedVersion, EnvironmentCompat.MEDIA_UNKNOWN)) {
                installedVersion = null;
            }
            mutableState.setValue(installedVersion);
            return Unit.INSTANCE;
        }
    }

    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        BuildersKt.launch$default(this.$scope, Dispatchers.getIO(), (CoroutineStart) null, new AnonymousClass1(this.$hermesVersion, this.$bootstrapManager, null), 2, (Object) null);
        return Unit.INSTANCE;
    }
}
