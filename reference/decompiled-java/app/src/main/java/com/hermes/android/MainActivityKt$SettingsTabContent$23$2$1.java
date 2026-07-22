package com.hermes.android;

import androidx.appcompat.app.AppCompatActivity;
import com.hermes.android.data.HermesConfigRepository;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$23$2$1", f = "MainActivity.kt", i = {}, l = {3495}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$SettingsTabContent$23$2$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ HermesConfigRepository $hermesRepo;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$SettingsTabContent$23$2$1(HermesConfigRepository hermesConfigRepository, AppCompatActivity appCompatActivity, Continuation<? super MainActivityKt$SettingsTabContent$23$2$1> continuation) {
        super(1, continuation);
        this.$hermesRepo = hermesConfigRepository;
        this.$activity = appCompatActivity;
    }

    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new MainActivityKt$SettingsTabContent$23$2$1(this.$hermesRepo, this.$activity, continuation);
    }

    public final Object invoke(Continuation<? super Unit> continuation) {
        return create(continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (MainActivityKt.SettingsTabContent$onLocalLlmActivated(this.$hermesRepo, this.$activity, (Continuation) this) == coroutine_suspended) {
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
