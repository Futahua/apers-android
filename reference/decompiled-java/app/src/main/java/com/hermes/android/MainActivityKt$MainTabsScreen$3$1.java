package com.hermes.android;

import androidx.compose.runtime.MutableState;
import com.hermes.android.data.HermesConfigRepository;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$MainTabsScreen$3$1", f = "MainActivity.kt", i = {}, l = {1709}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$MainTabsScreen$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ HermesConfigRepository $configRepo;
    final /* synthetic */ MutableState<Boolean> $hasApiKey$delegate;
    final /* synthetic */ MutableState<BottomTab> $selectedTab$delegate;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$MainTabsScreen$3$1(MutableState<BottomTab> mutableState, HermesConfigRepository hermesConfigRepository, MutableState<Boolean> mutableState2, Continuation<? super MainActivityKt$MainTabsScreen$3$1> continuation) {
        super(2, continuation);
        this.$selectedTab$delegate = mutableState;
        this.$configRepo = hermesConfigRepository;
        this.$hasApiKey$delegate = mutableState2;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$MainTabsScreen$3$1(this.$selectedTab$delegate, this.$configRepo, this.$hasApiKey$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        MutableState<Boolean> mutableState;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (MainActivityKt.MainTabsScreen$lambda$85(this.$selectedTab$delegate) == BottomTab.Home) {
                MutableState<Boolean> mutableState2 = this.$hasApiKey$delegate;
                this.L$0 = mutableState2;
                this.label = 1;
                Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(this.$configRepo, null), (Continuation) this);
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                mutableState = mutableState2;
                obj = objWithContext;
            }
            return Unit.INSTANCE;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        mutableState = (MutableState) this.L$0;
        ResultKt.throwOnFailure(obj);
        MainActivityKt.MainTabsScreen$lambda$106(mutableState, ((Boolean) obj).booleanValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$MainTabsScreen$3$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$MainTabsScreen$3$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ HermesConfigRepository $configRepo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(HermesConfigRepository hermesConfigRepository, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$configRepo = hermesConfigRepository;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$configRepo, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(this.$configRepo.hasAnyProviderConfigured());
        }
    }
}
