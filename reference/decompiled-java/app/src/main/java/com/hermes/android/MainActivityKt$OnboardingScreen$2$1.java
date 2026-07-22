package com.hermes.android;

import android.content.Context;
import androidx.compose.runtime.MutableState;
import com.hermes.android.data.AiProvider;
import com.hermes.android.data.ModelCatalogCache;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$OnboardingScreen$2$1", f = "MainActivity.kt", i = {}, l = {751}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$OnboardingScreen$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<List<String>> $modelSuggestions$delegate;
    final /* synthetic */ Context $onboardingContext;
    final /* synthetic */ AiProvider $selectedProvider;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$OnboardingScreen$2$1(AiProvider aiProvider, Context context, MutableState<List<String>> mutableState, Continuation<? super MainActivityKt$OnboardingScreen$2$1> continuation) {
        super(2, continuation);
        this.$selectedProvider = aiProvider;
        this.$onboardingContext = context;
        this.$modelSuggestions$delegate = mutableState;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$OnboardingScreen$2$1(this.$selectedProvider, this.$onboardingContext, this.$modelSuggestions$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        MutableState<List<String>> mutableState;
        List listEmptyList;
        MutableState<List<String>> mutableState2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            mutableState = this.$modelSuggestions$delegate;
            if (this.$selectedProvider.getAllowsCustomModel() && !StringsKt.isBlank(this.$selectedProvider.getHermesProvider())) {
                this.L$0 = mutableState;
                this.label = 1;
                Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(this.$onboardingContext, this.$selectedProvider, null), (Continuation) this);
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                mutableState2 = mutableState;
                obj = objWithContext;
            } else {
                listEmptyList = CollectionsKt.emptyList();
                mutableState.setValue(listEmptyList);
                return Unit.INSTANCE;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutableState2 = (MutableState) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        MutableState<List<String>> mutableState3 = mutableState2;
        listEmptyList = (List) obj;
        mutableState = mutableState3;
        mutableState.setValue(listEmptyList);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$OnboardingScreen$2$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$OnboardingScreen$2$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends String>>, Object> {
        final /* synthetic */ Context $onboardingContext;
        final /* synthetic */ AiProvider $selectedProvider;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, AiProvider aiProvider, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$onboardingContext = context;
            this.$selectedProvider = aiProvider;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$onboardingContext, this.$selectedProvider, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<String>> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return ModelCatalogCache.INSTANCE.cached(this.$onboardingContext, this.$selectedProvider.getHermesProvider());
        }
    }
}
