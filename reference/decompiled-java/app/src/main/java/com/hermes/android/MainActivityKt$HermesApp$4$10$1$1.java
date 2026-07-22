package com.hermes.android;

import android.content.Intent;
import android.util.Log;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.MutableState;
import com.hermes.android.BootstrapManager;
import com.hermes.android.MainActivityKt$HermesApp$4$10$1$1;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$HermesApp$4$10$1$1", f = "MainActivity.kt", i = {}, l = {522}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$HermesApp$4$10$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ BootstrapManager $bootstrapManager;
    final /* synthetic */ AppCompatActivity $context;
    final /* synthetic */ MutableState<String> $installError$delegate;
    final /* synthetic */ MutableState<BootstrapManager.Progress> $installProgress$delegate;
    final /* synthetic */ CoroutineScope $lifecycleScope;
    final /* synthetic */ MutableState<AppPhase> $phase$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$HermesApp$4$10$1$1(AppCompatActivity appCompatActivity, BootstrapManager bootstrapManager, CoroutineScope coroutineScope, MutableState<BootstrapManager.Progress> mutableState, MutableState<AppPhase> mutableState2, MutableState<String> mutableState3, Continuation<? super MainActivityKt$HermesApp$4$10$1$1> continuation) {
        super(2, continuation);
        this.$context = appCompatActivity;
        this.$bootstrapManager = bootstrapManager;
        this.$lifecycleScope = coroutineScope;
        this.$installProgress$delegate = mutableState;
        this.$phase$delegate = mutableState2;
        this.$installError$delegate = mutableState3;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$HermesApp$4$10$1$1(this.$context, this.$bootstrapManager, this.$lifecycleScope, this.$installProgress$delegate, this.$phase$delegate, this.$installError$delegate, continuation);
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
                if (BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(this.$bootstrapManager, this.$lifecycleScope, this.$installProgress$delegate, null), (Continuation) this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            try {
                this.$context.startForegroundService(new Intent(this.$context, (Class<?>) HermesService.class));
            } catch (IllegalStateException e) {
                Log.w("HermesApp", "FGS start not allowed: " + e.getMessage());
            } catch (Exception e2) {
                Log.e("HermesApp", "FGS start failed unexpectedly", e2);
            }
            AppCompatActivity appCompatActivity = this.$context;
            Intent intent = new Intent(this.$context, (Class<?>) HermesService.class);
            AppCompatActivity appCompatActivity2 = this.$context;
            Intrinsics.checkNotNull(appCompatActivity2, "null cannot be cast to non-null type com.hermes.android.MainActivity");
            appCompatActivity.bindService(intent, ((MainActivity) appCompatActivity2).getServiceConnection(), 1);
            MainActivityKt.HermesApp$lambda$3(this.$phase$delegate, AppPhase.READY);
        } catch (Exception e3) {
            Log.e("HermesApp", "Retry install failed!", e3);
            MutableState<String> mutableState = this.$installError$delegate;
            String message = e3.getMessage();
            if (message == null) {
                message = this.$context.getString(R.string.error_unknown);
                Intrinsics.checkNotNullExpressionValue(message, "getString(...)");
            }
            MainActivityKt.HermesApp$lambda$9(mutableState, message);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$HermesApp$4$10$1$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$HermesApp$4$10$1$1$1", f = "MainActivity.kt", i = {}, l = {523}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ BootstrapManager $bootstrapManager;
        final /* synthetic */ MutableState<BootstrapManager.Progress> $installProgress$delegate;
        final /* synthetic */ CoroutineScope $lifecycleScope;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BootstrapManager bootstrapManager, CoroutineScope coroutineScope, MutableState<BootstrapManager.Progress> mutableState, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$bootstrapManager = bootstrapManager;
            this.$lifecycleScope = coroutineScope;
            this.$installProgress$delegate = mutableState;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$bootstrapManager, this.$lifecycleScope, this.$installProgress$delegate, continuation);
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
                final CoroutineScope coroutineScope = this.$lifecycleScope;
                final MutableState<BootstrapManager.Progress> mutableState = this.$installProgress$delegate;
                this.label = 1;
                if (bootstrapManager.install(new Function1() { // from class: com.hermes.android.MainActivityKt$HermesApp$4$10$1$1$1$$ExternalSyntheticLambda0
                    public final Object invoke(Object obj2) {
                        return MainActivityKt$HermesApp$4$10$1$1.AnonymousClass1.invokeSuspend$lambda$0(coroutineScope, mutableState, (BootstrapManager.Progress) obj2);
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

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(CoroutineScope coroutineScope, MutableState mutableState, BootstrapManager.Progress progress) {
            BuildersKt.launch$default(coroutineScope, Dispatchers.getMain(), (CoroutineStart) null, new MainActivityKt$HermesApp$4$10$1$1$1$1$1(progress, mutableState, null), 2, (Object) null);
            return Unit.INSTANCE;
        }
    }
}
