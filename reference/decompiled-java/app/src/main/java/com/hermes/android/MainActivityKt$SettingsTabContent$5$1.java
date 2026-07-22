package com.hermes.android;

import androidx.compose.runtime.MutableState;
import com.hermes.android.data.HermesConfigRepository;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
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
@DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$5$1", f = "MainActivity.kt", i = {}, l = {2369}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$SettingsTabContent$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<Boolean> $edgeInstalled$delegate;
    final /* synthetic */ HermesConfigRepository $hermesRepo;
    final /* synthetic */ MutableState<Boolean> $showWebKeyDialog$delegate;
    final /* synthetic */ MutableState<Boolean> $webKeyConfigured$delegate;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$SettingsTabContent$5$1(MutableState<Boolean> mutableState, MutableState<Boolean> mutableState2, HermesConfigRepository hermesConfigRepository, MutableState<Boolean> mutableState3, Continuation<? super MainActivityKt$SettingsTabContent$5$1> continuation) {
        super(2, continuation);
        this.$edgeInstalled$delegate = mutableState;
        this.$showWebKeyDialog$delegate = mutableState2;
        this.$hermesRepo = hermesConfigRepository;
        this.$webKeyConfigured$delegate = mutableState3;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$SettingsTabContent$5$1(this.$edgeInstalled$delegate, this.$showWebKeyDialog$delegate, this.$hermesRepo, this.$webKeyConfigured$delegate, continuation);
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
            if (MainActivityKt.SettingsTabContent$lambda$185(this.$edgeInstalled$delegate) && !MainActivityKt.SettingsTabContent$lambda$188(this.$showWebKeyDialog$delegate)) {
                MutableState<Boolean> mutableState2 = this.$webKeyConfigured$delegate;
                this.L$0 = mutableState2;
                this.label = 1;
                Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(this.$hermesRepo, null), (Continuation) this);
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
        MainActivityKt.SettingsTabContent$lambda$192(mutableState, ((Boolean) obj).booleanValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$SettingsTabContent$5$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$5$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ HermesConfigRepository $hermesRepo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(HermesConfigRepository hermesConfigRepository, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$hermesRepo = hermesConfigRepository;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$hermesRepo, continuation);
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
            boolean z = false;
            List listListOf = CollectionsKt.listOf(new String[]{"TAVILY_API_KEY", "EXA_API_KEY", "FIRECRAWL_API_KEY"});
            HermesConfigRepository hermesConfigRepository = this.$hermesRepo;
            if (!(listListOf instanceof Collection) || !listListOf.isEmpty()) {
                Iterator it = listListOf.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (hermesConfigRepository.hasApiKey((String) it.next())) {
                        z = true;
                        break;
                    }
                }
            }
            return Boxing.boxBoolean(z);
        }
    }
}
