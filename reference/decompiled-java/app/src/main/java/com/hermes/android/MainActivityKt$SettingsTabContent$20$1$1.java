package com.hermes.android;

import android.content.Context;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.MutableState;
import com.hermes.android.data.HermesConfigRepository;
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
@DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$20$1$1", f = "MainActivity.kt", i = {}, l = {3449}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$SettingsTabContent$20$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ String $apiKey;
    final /* synthetic */ String $envVar;
    final /* synthetic */ HermesConfigRepository $hermesRepo;
    final /* synthetic */ MutableState<Boolean> $showWebKeyDialog$delegate;
    final /* synthetic */ MutableState<Boolean> $webKeyConfigured$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$SettingsTabContent$20$1$1(AppCompatActivity appCompatActivity, HermesConfigRepository hermesConfigRepository, String str, String str2, MutableState<Boolean> mutableState, MutableState<Boolean> mutableState2, Continuation<? super MainActivityKt$SettingsTabContent$20$1$1> continuation) {
        super(2, continuation);
        this.$activity = appCompatActivity;
        this.$hermesRepo = hermesConfigRepository;
        this.$envVar = str;
        this.$apiKey = str2;
        this.$webKeyConfigured$delegate = mutableState;
        this.$showWebKeyDialog$delegate = mutableState2;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$SettingsTabContent$20$1$1(this.$activity, this.$hermesRepo, this.$envVar, this.$apiKey, this.$webKeyConfigured$delegate, this.$showWebKeyDialog$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$SettingsTabContent$20$1$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$20$1$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $apiKey;
        final /* synthetic */ String $envVar;
        final /* synthetic */ HermesConfigRepository $hermesRepo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(HermesConfigRepository hermesConfigRepository, String str, String str2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$hermesRepo = hermesConfigRepository;
            this.$envVar = str;
            this.$apiKey = str2;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$hermesRepo, this.$envVar, this.$apiKey, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0048  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            String str;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$hermesRepo.writeApiKey(this.$envVar, this.$apiKey);
            String str2 = this.$envVar;
            int iHashCode = str2.hashCode();
            if (iHashCode != 1207740713) {
                if (iHashCode != 1281177548) {
                    if (iHashCode == 1346431912 && str2.equals("TAVILY_API_KEY")) {
                        str = "tavily";
                    } else {
                        str = "";
                    }
                } else if (str2.equals("FIRECRAWL_API_KEY")) {
                    str = "firecrawl";
                }
            } else if (str2.equals("EXA_API_KEY")) {
                str = "exa";
            }
            if (str.length() > 0) {
                this.$hermesRepo.setWebBackend(str);
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
            if (BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(this.$hermesRepo, this.$envVar, this.$apiKey, null), (Continuation) this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        MainActivityKt.SettingsTabContent$lambda$192(this.$webKeyConfigured$delegate, true);
        MainActivityKt.SettingsTabContent$lambda$189(this.$showWebKeyDialog$delegate, false);
        Context context = this.$activity;
        Toast.makeText(context, context.getString(R.string.web_key_saved), 0).show();
        return Unit.INSTANCE;
    }
}
