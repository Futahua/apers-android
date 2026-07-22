package com.hermes.android;

import android.content.SharedPreferences;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
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
@DebugMetadata(c = "com.hermes.android.MainActivityKt$TerminalTabContent$6$1", f = "MainActivity.kt", i = {}, l = {4039}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$TerminalTabContent$6$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ BootstrapManager $bootstrapManager;
    final /* synthetic */ MutableState<Boolean> $hermesLaunched$delegate;
    final /* synthetic */ MutableIntState $hermesResponseCount$delegate;
    final /* synthetic */ SharedPreferences $prefs;
    final /* synthetic */ MutableState<Boolean> $reviewChecked;
    final /* synthetic */ MutableState<Boolean> $showEdgeReviewSheet$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$TerminalTabContent$6$1(MutableState<Boolean> mutableState, SharedPreferences sharedPreferences, MutableIntState mutableIntState, MutableState<Boolean> mutableState2, BootstrapManager bootstrapManager, MutableState<Boolean> mutableState3, Continuation<? super MainActivityKt$TerminalTabContent$6$1> continuation) {
        super(2, continuation);
        this.$reviewChecked = mutableState;
        this.$prefs = sharedPreferences;
        this.$hermesResponseCount$delegate = mutableIntState;
        this.$hermesLaunched$delegate = mutableState2;
        this.$bootstrapManager = bootstrapManager;
        this.$showEdgeReviewSheet$delegate = mutableState3;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$TerminalTabContent$6$1(this.$reviewChecked, this.$prefs, this.$hermesResponseCount$delegate, this.$hermesLaunched$delegate, this.$bootstrapManager, this.$showEdgeReviewSheet$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (!this.$reviewChecked.getValue().booleanValue() && MainActivityKt.TerminalTabContent$lambda$452(this.$hermesResponseCount$delegate) >= 15 && MainActivityKt.TerminalTabContent$lambda$455(this.$hermesLaunched$delegate)) {
                if (this.$prefs.getBoolean("review_shown", false)) {
                    this.$reviewChecked.setValue(Boxing.boxBoolean(true));
                    return Unit.INSTANCE;
                }
                this.$reviewChecked.setValue(Boxing.boxBoolean(true));
                this.label = 1;
                obj = BuildersKt.withContext(Dispatchers.getIO(), new MainActivityKt$TerminalTabContent$6$1$edgeInstalled$1(this.$bootstrapManager, null), (Continuation) this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        if (!((Boolean) obj).booleanValue()) {
            MainActivityKt.TerminalTabContent$lambda$459(this.$showEdgeReviewSheet$delegate, true);
            this.$prefs.edit().putBoolean("review_shown", true).apply();
        }
        return Unit.INSTANCE;
    }
}
