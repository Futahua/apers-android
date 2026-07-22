package com.hermes.android;

import androidx.compose.runtime.State;
import com.hermes.android.data.AiProvider;
import com.hermes.android.data.HermesConfigRepository;
import com.hermes.android.data.NousAuthFlow;
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
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: NousAuthDialog.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.NousAuthDialogKt$NousAuthDialog$2$1", f = "NousAuthDialog.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class NousAuthDialogKt$NousAuthDialog$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ HermesConfigRepository $hermesRepo;
    final /* synthetic */ Function0<Unit> $onSuccess;
    final /* synthetic */ AiProvider $provider;
    final /* synthetic */ CoroutineScope $scope;
    final /* synthetic */ State<NousAuthFlow.State> $state$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NousAuthDialogKt$NousAuthDialog$2$1(CoroutineScope coroutineScope, State<? extends NousAuthFlow.State> state, HermesConfigRepository hermesConfigRepository, AiProvider aiProvider, Function0<Unit> function0, Continuation<? super NousAuthDialogKt$NousAuthDialog$2$1> continuation) {
        super(2, continuation);
        this.$scope = coroutineScope;
        this.$state$delegate = state;
        this.$hermesRepo = hermesConfigRepository;
        this.$provider = aiProvider;
        this.$onSuccess = function0;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NousAuthDialogKt$NousAuthDialog$2$1(this.$scope, this.$state$delegate, this.$hermesRepo, this.$provider, this.$onSuccess, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            if (NousAuthDialogKt.NousAuthDialog$lambda$3(this.$state$delegate) instanceof NousAuthFlow.State.Success) {
                BuildersKt.launch$default(this.$scope, Dispatchers.getIO(), (CoroutineStart) null, new AnonymousClass1(ProviderSwitchCoordinator.INSTANCE.onSelected(), this.$hermesRepo, this.$provider, this.$onSuccess, null), 2, (Object) null);
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    /* JADX INFO: renamed from: com.hermes.android.NousAuthDialogKt$NousAuthDialog$2$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: NousAuthDialog.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.NousAuthDialogKt$NousAuthDialog$2$1$1", f = "NousAuthDialog.kt", i = {}, l = {74, 79}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ HermesConfigRepository $hermesRepo;
        final /* synthetic */ long $oauthToken;
        final /* synthetic */ Function0<Unit> $onSuccess;
        final /* synthetic */ AiProvider $provider;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(long j, HermesConfigRepository hermesConfigRepository, AiProvider aiProvider, Function0<Unit> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$oauthToken = j;
            this.$hermesRepo = hermesConfigRepository;
            this.$provider = aiProvider;
            this.$onSuccess = function0;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$oauthToken, this.$hermesRepo, this.$provider, this.$onSuccess, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.hermes.android.NousAuthDialogKt$NousAuthDialog$2$1$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: NousAuthDialog.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.hermes.android.NousAuthDialogKt$NousAuthDialog$2$1$1$1", f = "NousAuthDialog.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C00221 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
            final /* synthetic */ HermesConfigRepository $hermesRepo;
            final /* synthetic */ AiProvider $provider;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00221(HermesConfigRepository hermesConfigRepository, AiProvider aiProvider, Continuation<? super C00221> continuation) {
                super(1, continuation);
                this.$hermesRepo = hermesConfigRepository;
                this.$provider = aiProvider;
            }

            public final Continuation<Unit> create(Continuation<?> continuation) {
                return new C00221(this.$hermesRepo, this.$provider, continuation);
            }

            public final Object invoke(Continuation<? super Unit> continuation) {
                return create(continuation).invokeSuspend(Unit.INSTANCE);
            }

            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                HermesConfigRepository.writeModelConfig$default(this.$hermesRepo, this.$provider.getHermesProvider(), this.$provider.getHermesDefaultModel(), (String) null, (String) null, (String) null, (Integer) null, 60, (Object) null);
                ModelSwitchPrompt.INSTANCE.offer(this.$provider.getName(), this.$provider.getHermesProvider(), this.$provider.getHermesDefaultModel());
                return Unit.INSTANCE;
            }
        }

        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (ProviderSwitchCoordinator.INSTANCE.commitIfLatest(this.$oauthToken, new C00221(this.$hermesRepo, this.$provider, null), (Continuation) this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
            }
            this.label = 2;
            if (BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(this.$onSuccess, null), (Continuation) this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.hermes.android.NousAuthDialogKt$NousAuthDialog$2$1$1$2, reason: invalid class name */
        /* JADX INFO: compiled from: NousAuthDialog.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.hermes.android.NousAuthDialogKt$NousAuthDialog$2$1$1$2", f = "NousAuthDialog.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Function0<Unit> $onSuccess;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(Function0<Unit> function0, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.$onSuccess = function0;
            }

            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass2(this.$onSuccess, continuation);
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
                this.$onSuccess.invoke();
                return Unit.INSTANCE;
            }
        }
    }
}
