package com.hermes.android;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.hermes.android.data.AiProvider;
import com.hermes.android.data.HermesConfigRepository;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ HermesConfigRepository $hermesRepo;
    final /* synthetic */ AiProvider $p;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2(HermesConfigRepository hermesConfigRepository, AiProvider aiProvider, AppCompatActivity appCompatActivity, Continuation<? super MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2> continuation) {
        super(1, continuation);
        this.$hermesRepo = hermesConfigRepository;
        this.$p = aiProvider;
        this.$activity = appCompatActivity;
    }

    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2(this.$hermesRepo, this.$p, this.$activity, continuation);
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
        this.$hermesRepo.upsertCustomProvider(this.$p.getId(), this.$p.getDefaultBaseUrl(), "no-key-required", this.$p.getDefaultModelId(), this.$p.getApiMode());
        this.$hermesRepo.writeModelConfig(this.$p.getId(), this.$p.getDefaultModelId(), this.$p.getDefaultBaseUrl(), "no-key-required", this.$p.getApiMode(), Boxing.boxInt(NpuModuleBridge.INSTANCE.activeContextLength((Context) this.$activity)));
        ModelSwitchPrompt.INSTANCE.offer(this.$p.getName(), this.$p.getId(), this.$p.getDefaultModelId());
        return Unit.INSTANCE;
    }
}
