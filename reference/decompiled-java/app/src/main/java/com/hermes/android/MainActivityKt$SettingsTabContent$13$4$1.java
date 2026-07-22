package com.hermes.android;

import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.MutableState;
import com.hermes.android.data.AiProvider;
import com.hermes.android.data.HermesConfigRepository;
import com.hermes.android.data.ModelCatalogCache;
import java.util.List;
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
@DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$13$4$1", f = "MainActivity.kt", i = {}, l = {3217}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$SettingsTabContent$13$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ BootstrapManager $bootstrapManager;
    final /* synthetic */ HermesConfigRepository $hermesRepo;
    final /* synthetic */ MutableState<List<String>> $modelSuggestions$delegate;
    final /* synthetic */ AiProvider $provider;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$SettingsTabContent$13$4$1(AppCompatActivity appCompatActivity, AiProvider aiProvider, HermesConfigRepository hermesConfigRepository, BootstrapManager bootstrapManager, MutableState<List<String>> mutableState, Continuation<? super MainActivityKt$SettingsTabContent$13$4$1> continuation) {
        super(2, continuation);
        this.$activity = appCompatActivity;
        this.$provider = aiProvider;
        this.$hermesRepo = hermesConfigRepository;
        this.$bootstrapManager = bootstrapManager;
        this.$modelSuggestions$delegate = mutableState;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$SettingsTabContent$13$4$1(this.$activity, this.$provider, this.$hermesRepo, this.$bootstrapManager, this.$modelSuggestions$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$SettingsTabContent$13$4$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$13$4$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AppCompatActivity $activity;
        final /* synthetic */ BootstrapManager $bootstrapManager;
        final /* synthetic */ HermesConfigRepository $hermesRepo;
        final /* synthetic */ MutableState<List<String>> $modelSuggestions$delegate;
        final /* synthetic */ AiProvider $provider;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AppCompatActivity appCompatActivity, AiProvider aiProvider, HermesConfigRepository hermesConfigRepository, BootstrapManager bootstrapManager, MutableState<List<String>> mutableState, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$activity = appCompatActivity;
            this.$provider = aiProvider;
            this.$hermesRepo = hermesConfigRepository;
            this.$bootstrapManager = bootstrapManager;
            this.$modelSuggestions$delegate = mutableState;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$activity, this.$provider, this.$hermesRepo, this.$bootstrapManager, this.$modelSuggestions$delegate, continuation);
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
            this.$modelSuggestions$delegate.setValue(ModelCatalogCache.INSTANCE.cached(this.$activity, this.$provider.getHermesProvider()));
            if ((!this.$provider.getRequiresKey() || this.$hermesRepo.hasApiKey(this.$provider.getEnvVar())) && this.$bootstrapManager.isInstalled() && this.$bootstrapManager.isHermesInstalled() && ModelCatalogCache.needsRefresh$default(ModelCatalogCache.INSTANCE, this.$activity, this.$provider.getHermesProvider(), 0L, 4, (Object) null)) {
                List listFetchAndCache = ModelCatalogCache.INSTANCE.fetchAndCache(this.$activity, this.$provider.getHermesProvider(), new MainActivityKt$SettingsTabContent$13$4$1$1$fresh$1(this.$bootstrapManager));
                if (!listFetchAndCache.isEmpty()) {
                    this.$modelSuggestions$delegate.setValue(listFetchAndCache);
                }
            }
            return Unit.INSTANCE;
        }
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(this.$activity, this.$provider, this.$hermesRepo, this.$bootstrapManager, this.$modelSuggestions$delegate, null), (Continuation) this) == coroutine_suspended) {
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
}
