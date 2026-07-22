package com.hermes.android;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.MutableState;
import com.hermes.android.handoff.HandoffController;
import com.hermes.android.handoff.HandoffImporter;
import kotlin.Metadata;
import kotlin.Result;
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
@DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$8$1$5$2$1$1", f = "MainActivity.kt", i = {}, l = {2687}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$SettingsTabContent$8$1$5$2$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ HandoffController $handoffController;
    final /* synthetic */ MutableState<String> $handoffError$delegate;
    final /* synthetic */ MutableState<HandoffImporter.Stats> $handoffSyncResult$delegate;
    final /* synthetic */ MutableState<Boolean> $handoffSyncing$delegate;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$SettingsTabContent$8$1$5$2$1$1(HandoffController handoffController, MutableState<Boolean> mutableState, MutableState<HandoffImporter.Stats> mutableState2, AppCompatActivity appCompatActivity, MutableState<String> mutableState3, Continuation<? super MainActivityKt$SettingsTabContent$8$1$5$2$1$1> continuation) {
        super(2, continuation);
        this.$handoffController = handoffController;
        this.$handoffSyncing$delegate = mutableState;
        this.$handoffSyncResult$delegate = mutableState2;
        this.$activity = appCompatActivity;
        this.$handoffError$delegate = mutableState3;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Continuation<Unit> mainActivityKt$SettingsTabContent$8$1$5$2$1$1 = new MainActivityKt$SettingsTabContent$8$1$5$2$1$1(this.$handoffController, this.$handoffSyncing$delegate, this.$handoffSyncResult$delegate, this.$activity, this.$handoffError$delegate, continuation);
        mainActivityKt$SettingsTabContent$8$1$5$2$1$1.L$0 = obj;
        return mainActivityKt$SettingsTabContent$8$1$5$2$1$1;
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object obj2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            HandoffController handoffController = this.$handoffController;
            try {
                Result.Companion companion = Result.Companion;
                obj2 = Result.constructor-impl(handoffController.syncBack());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                obj2 = Result.constructor-impl(ResultKt.createFailure(th));
            }
            Object obj3 = obj2;
            this.label = 1;
            if (BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass1(obj3, this.$handoffSyncing$delegate, this.$handoffSyncResult$delegate, this.$activity, this.$handoffError$delegate, null), (Continuation) this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$5$2$1$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$8$1$5$2$1$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AppCompatActivity $activity;
        final /* synthetic */ MutableState<String> $handoffError$delegate;
        final /* synthetic */ MutableState<HandoffImporter.Stats> $handoffSyncResult$delegate;
        final /* synthetic */ MutableState<Boolean> $handoffSyncing$delegate;
        final /* synthetic */ Object $outcome;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Object obj, MutableState<Boolean> mutableState, MutableState<HandoffImporter.Stats> mutableState2, AppCompatActivity appCompatActivity, MutableState<String> mutableState3, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$outcome = obj;
            this.$handoffSyncing$delegate = mutableState;
            this.$handoffSyncResult$delegate = mutableState2;
            this.$activity = appCompatActivity;
            this.$handoffError$delegate = mutableState3;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$outcome, this.$handoffSyncing$delegate, this.$handoffSyncResult$delegate, this.$activity, this.$handoffError$delegate, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                MainActivityKt.SettingsTabContent$lambda$279(this.$handoffSyncing$delegate, false);
                Object obj2 = this.$outcome;
                MutableState<HandoffImporter.Stats> mutableState = this.$handoffSyncResult$delegate;
                if (Result.isSuccess-impl(obj2)) {
                    mutableState.setValue((HandoffImporter.Stats) obj2);
                }
                Context context = this.$activity;
                MutableState<String> mutableState2 = this.$handoffError$delegate;
                Throwable th = Result.exceptionOrNull-impl(obj2);
                if (th != null) {
                    mutableState2.setValue(UiErrorKt.uiMessage(th, context));
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
