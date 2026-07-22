package com.hermes.android.ui.localllm;

import android.content.Context;
import androidx.compose.runtime.MutableState;
import com.google.android.play.core.splitinstall.SplitInstallManager;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$1$1", f = "LocalLlmSetupScreen.kt", i = {}, l = {283}, m = "invokeSuspend", n = {}, s = {})
final class LocalLlmSetupScreenKt$LocalLlmSetupScreen$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableState<SetupSnapshot> $snap$delegate;
    final /* synthetic */ SplitInstallManager $splitManager;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalLlmSetupScreenKt$LocalLlmSetupScreen$1$1(Context context, SplitInstallManager splitInstallManager, MutableState<SetupSnapshot> mutableState, Continuation<? super LocalLlmSetupScreenKt$LocalLlmSetupScreen$1$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$splitManager = splitInstallManager;
        this.$snap$delegate = mutableState;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalLlmSetupScreenKt$LocalLlmSetupScreen$1$1(this.$context, this.$splitManager, this.$snap$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$1$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/hermes/android/ui/localllm/SetupSnapshot;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$1$1$1", f = "LocalLlmSetupScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super SetupSnapshot>, Object> {
        final /* synthetic */ Context $context;
        final /* synthetic */ SplitInstallManager $splitManager;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, SplitInstallManager splitInstallManager, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$context = context;
            this.$splitManager = splitInstallManager;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$context, this.$splitManager, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super SetupSnapshot> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return LocalLlmSetupScreenKt.LocalLlmSetupScreen$loadSnapshot(this.$context, this.$splitManager);
        }
    }

    public final Object invokeSuspend(Object obj) {
        MutableState<SetupSnapshot> mutableState;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            MutableState<SetupSnapshot> mutableState2 = this.$snap$delegate;
            this.L$0 = mutableState2;
            this.label = 1;
            Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(this.$context, this.$splitManager, null), (Continuation) this);
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
            mutableState = mutableState2;
            obj = objWithContext;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutableState = (MutableState) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        mutableState.setValue((SetupSnapshot) obj);
        return Unit.INSTANCE;
    }
}
