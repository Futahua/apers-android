package com.hermes.android;

import android.content.Intent;
import android.util.Log;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.MutableState;
import com.hermes.android.BootstrapManager;
import com.hermes.android.MainActivityKt$HermesApp$4$8$1$1;
import com.hermes.android.data.AiProvider;
import com.hermes.android.data.HermesConfigRepository;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$HermesApp$4$8$1$1", f = "MainActivity.kt", i = {}, l = {446, 480}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$HermesApp$4$8$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<String> $apiBaseUrl$delegate;
    final /* synthetic */ MutableState<String> $apiKey$delegate;
    final /* synthetic */ MutableState<String> $apiModelId$delegate;
    final /* synthetic */ MutableState<String> $apiProvider$delegate;
    final /* synthetic */ BootstrapManager $bootstrapManager;
    final /* synthetic */ AppCompatActivity $context;
    final /* synthetic */ MutableState<String> $installError$delegate;
    final /* synthetic */ MutableState<BootstrapManager.Progress> $installProgress$delegate;
    final /* synthetic */ long $installToken;
    final /* synthetic */ CoroutineScope $lifecycleScope;
    final /* synthetic */ MutableState<AppPhase> $phase$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$HermesApp$4$8$1$1(long j, AppCompatActivity appCompatActivity, MutableState<String> mutableState, MutableState<String> mutableState2, MutableState<String> mutableState3, MutableState<String> mutableState4, BootstrapManager bootstrapManager, CoroutineScope coroutineScope, MutableState<BootstrapManager.Progress> mutableState5, MutableState<AppPhase> mutableState6, MutableState<String> mutableState7, Continuation<? super MainActivityKt$HermesApp$4$8$1$1> continuation) {
        super(2, continuation);
        this.$installToken = j;
        this.$context = appCompatActivity;
        this.$apiProvider$delegate = mutableState;
        this.$apiBaseUrl$delegate = mutableState2;
        this.$apiKey$delegate = mutableState3;
        this.$apiModelId$delegate = mutableState4;
        this.$bootstrapManager = bootstrapManager;
        this.$lifecycleScope = coroutineScope;
        this.$installProgress$delegate = mutableState5;
        this.$phase$delegate = mutableState6;
        this.$installError$delegate = mutableState7;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$HermesApp$4$8$1$1(this.$installToken, this.$context, this.$apiProvider$delegate, this.$apiBaseUrl$delegate, this.$apiKey$delegate, this.$apiModelId$delegate, this.$bootstrapManager, this.$lifecycleScope, this.$installProgress$delegate, this.$phase$delegate, this.$installError$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:0|2|(1:35)|(1:(1:(6:6|37|21|27|33|34)(2:8|9))(1:10))(3:14|15|(1:17))|18|(1:20)|37|21|27|33|34) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0084, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0085, code lost:
    
        android.util.Log.e("HermesApp", "FGS start failed unexpectedly", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008e, code lost:
    
        android.util.Log.w("HermesApp", "FGS start not allowed: " + r0.getMessage());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
        } catch (Exception e) {
            Log.e("HermesApp", "Install failed!", e);
            MutableState<String> mutableState = this.$installError$delegate;
            String message = e.getMessage();
            if (message == null) {
                message = this.$context.getString(R.string.error_unknown);
                Intrinsics.checkNotNullExpressionValue(message, "getString(...)");
            }
            MainActivityKt.HermesApp$lambda$9(mutableState, message);
        }
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (ProviderSwitchCoordinator.INSTANCE.commitIfLatest(this.$installToken, new AnonymousClass1(this.$context, this.$apiProvider$delegate, this.$apiBaseUrl$delegate, this.$apiKey$delegate, this.$apiModelId$delegate, null), (Continuation) this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                this.$context.startForegroundService(new Intent(this.$context, (Class<?>) HermesService.class));
                AppCompatActivity appCompatActivity = this.$context;
                Intent intent = new Intent(this.$context, (Class<?>) HermesService.class);
                AppCompatActivity appCompatActivity2 = this.$context;
                Intrinsics.checkNotNull(appCompatActivity2, "null cannot be cast to non-null type com.hermes.android.MainActivity");
                appCompatActivity.bindService(intent, ((MainActivity) appCompatActivity2).getServiceConnection(), 1);
                MainActivityKt.HermesApp$lambda$3(this.$phase$delegate, AppPhase.READY);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
        }
        this.label = 2;
        if (BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(this.$bootstrapManager, this.$lifecycleScope, this.$installProgress$delegate, null), (Continuation) this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        this.$context.startForegroundService(new Intent(this.$context, (Class<?>) HermesService.class));
        AppCompatActivity appCompatActivity3 = this.$context;
        Intent intent2 = new Intent(this.$context, (Class<?>) HermesService.class);
        AppCompatActivity appCompatActivity22 = this.$context;
        Intrinsics.checkNotNull(appCompatActivity22, "null cannot be cast to non-null type com.hermes.android.MainActivity");
        appCompatActivity3.bindService(intent2, ((MainActivity) appCompatActivity22).getServiceConnection(), 1);
        MainActivityKt.HermesApp$lambda$3(this.$phase$delegate, AppPhase.READY);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$HermesApp$4$8$1$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$HermesApp$4$8$1$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ MutableState<String> $apiBaseUrl$delegate;
        final /* synthetic */ MutableState<String> $apiKey$delegate;
        final /* synthetic */ MutableState<String> $apiModelId$delegate;
        final /* synthetic */ MutableState<String> $apiProvider$delegate;
        final /* synthetic */ AppCompatActivity $context;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AppCompatActivity appCompatActivity, MutableState<String> mutableState, MutableState<String> mutableState2, MutableState<String> mutableState3, MutableState<String> mutableState4, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$context = appCompatActivity;
            this.$apiProvider$delegate = mutableState;
            this.$apiBaseUrl$delegate = mutableState2;
            this.$apiKey$delegate = mutableState3;
            this.$apiModelId$delegate = mutableState4;
        }

        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$context, this.$apiProvider$delegate, this.$apiBaseUrl$delegate, this.$apiKey$delegate, this.$apiModelId$delegate, continuation);
        }

        public final Object invoke(Continuation<? super Unit> continuation) {
            return create(continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            String hermesDefaultModel;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            HermesConfigRepository hermesConfigRepository = new HermesConfigRepository(HermesPaths.INSTANCE.hermesHome(this.$context.getFilesDir().getAbsolutePath() + "/home"));
            AiProvider aiProviderFindById = AiProvider.Companion.findById(MainActivityKt.HermesApp$lambda$14(this.$apiProvider$delegate));
            if (aiProviderFindById == null) {
                aiProviderFindById = (AiProvider) CollectionsKt.first(AiProvider.Companion.getALL());
            }
            if (aiProviderFindById.isCustom()) {
                String strHermesApp$lambda$17 = MainActivityKt.HermesApp$lambda$17(this.$apiBaseUrl$delegate);
                if (StringsKt.isBlank(strHermesApp$lambda$17)) {
                    strHermesApp$lambda$17 = aiProviderFindById.getDefaultBaseUrl();
                }
                String str = strHermesApp$lambda$17;
                String strHermesApp$lambda$11 = MainActivityKt.HermesApp$lambda$11(this.$apiKey$delegate);
                if (StringsKt.isBlank(strHermesApp$lambda$11)) {
                    strHermesApp$lambda$11 = "no-key-required";
                }
                String str2 = strHermesApp$lambda$11;
                if (!StringsKt.isBlank(str)) {
                    if (!StringsKt.isBlank(MainActivityKt.HermesApp$lambda$11(this.$apiKey$delegate)) && !StringsKt.isBlank(aiProviderFindById.getEnvVar())) {
                        hermesConfigRepository.writeApiKey(aiProviderFindById.getEnvVar(), MainActivityKt.HermesApp$lambda$11(this.$apiKey$delegate));
                    }
                    hermesConfigRepository.upsertCustomProvider(aiProviderFindById.getId(), str, str2, MainActivityKt.HermesApp$lambda$20(this.$apiModelId$delegate), aiProviderFindById.getApiMode());
                    HermesConfigRepository.writeModelConfig$default(hermesConfigRepository, aiProviderFindById.getId(), MainActivityKt.HermesApp$lambda$20(this.$apiModelId$delegate), str, str2, aiProviderFindById.getApiMode(), (Integer) null, 32, (Object) null);
                }
            } else if (!StringsKt.isBlank(MainActivityKt.HermesApp$lambda$11(this.$apiKey$delegate)) && !aiProviderFindById.isOAuth()) {
                hermesConfigRepository.writeApiKey(aiProviderFindById.getEnvVar(), MainActivityKt.HermesApp$lambda$11(this.$apiKey$delegate));
                if (!StringsKt.isBlank(aiProviderFindById.getBaseUrlEnvVar()) && !StringsKt.isBlank(MainActivityKt.HermesApp$lambda$17(this.$apiBaseUrl$delegate))) {
                    hermesConfigRepository.writeApiKey(aiProviderFindById.getBaseUrlEnvVar(), MainActivityKt.HermesApp$lambda$17(this.$apiBaseUrl$delegate));
                }
                if (aiProviderFindById.getAllowsCustomModel()) {
                    String strHermesApp$lambda$20 = MainActivityKt.HermesApp$lambda$20(this.$apiModelId$delegate);
                    if (StringsKt.isBlank(strHermesApp$lambda$20)) {
                        strHermesApp$lambda$20 = aiProviderFindById.getHermesDefaultModel();
                    }
                    hermesDefaultModel = strHermesApp$lambda$20;
                } else {
                    hermesDefaultModel = aiProviderFindById.getHermesDefaultModel();
                }
                HermesConfigRepository.writeModelConfig$default(hermesConfigRepository, aiProviderFindById.getHermesProvider(), hermesDefaultModel, (String) null, (String) null, (String) null, (Integer) null, 60, (Object) null);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$HermesApp$4$8$1$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$HermesApp$4$8$1$1$2", f = "MainActivity.kt", i = {}, l = {481}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ BootstrapManager $bootstrapManager;
        final /* synthetic */ MutableState<BootstrapManager.Progress> $installProgress$delegate;
        final /* synthetic */ CoroutineScope $lifecycleScope;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(BootstrapManager bootstrapManager, CoroutineScope coroutineScope, MutableState<BootstrapManager.Progress> mutableState, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$bootstrapManager = bootstrapManager;
            this.$lifecycleScope = coroutineScope;
            this.$installProgress$delegate = mutableState;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$bootstrapManager, this.$lifecycleScope, this.$installProgress$delegate, continuation);
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
                if (bootstrapManager.install(new Function1() { // from class: com.hermes.android.MainActivityKt$HermesApp$4$8$1$1$2$$ExternalSyntheticLambda0
                    public final Object invoke(Object obj2) {
                        return MainActivityKt$HermesApp$4$8$1$1.AnonymousClass2.invokeSuspend$lambda$0(coroutineScope, mutableState, (BootstrapManager.Progress) obj2);
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
            BuildersKt.launch$default(coroutineScope, Dispatchers.getMain(), (CoroutineStart) null, new MainActivityKt$HermesApp$4$8$1$1$2$1$1(progress, mutableState, null), 2, (Object) null);
            return Unit.INSTANCE;
        }
    }
}
