package com.hermes.android;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$TerminalTabContent$resumeHermesSession$2$ok$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$TerminalTabContent$resumeHermesSession$2$ok$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ BootstrapManager $bootstrapManager;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$TerminalTabContent$resumeHermesSession$2$ok$1(BootstrapManager bootstrapManager, Continuation<? super MainActivityKt$TerminalTabContent$resumeHermesSession$2$ok$1> continuation) {
        super(2, continuation);
        this.$bootstrapManager = bootstrapManager;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$TerminalTabContent$resumeHermesSession$2$ok$1(this.$bootstrapManager, continuation);
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
        boolean zEnsureSqlite = this.$bootstrapManager.ensureSqlite();
        if (zEnsureSqlite) {
            this.$bootstrapManager.patchPydanticVersionCheck();
        }
        return Boxing.boxBoolean(zEnsureSqlite);
    }
}
