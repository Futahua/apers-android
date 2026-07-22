package com.hermes.android;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.compose.runtime.MutableState;
import com.hermes.android.data.NousAuthFlow;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: NousAuthDialog.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.NousAuthDialogKt$NousAuthDialog$5$1$2$1", f = "NousAuthDialog.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class NousAuthDialogKt$NousAuthDialog$5$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<Boolean> $browserOpened$delegate;
    final /* synthetic */ Context $context;
    final /* synthetic */ NousAuthFlow.State $s;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NousAuthDialogKt$NousAuthDialog$5$1$2$1(NousAuthFlow.State state, MutableState<Boolean> mutableState, Context context, Continuation<? super NousAuthDialogKt$NousAuthDialog$5$1$2$1> continuation) {
        super(2, continuation);
        this.$s = state;
        this.$browserOpened$delegate = mutableState;
        this.$context = context;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Continuation<Unit> nousAuthDialogKt$NousAuthDialog$5$1$2$1 = new NousAuthDialogKt$NousAuthDialog$5$1$2$1(this.$s, this.$browserOpened$delegate, this.$context, continuation);
        nousAuthDialogKt$NousAuthDialog$5$1$2$1.L$0 = obj;
        return nousAuthDialogKt$NousAuthDialog$5$1$2$1;
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            if (!NousAuthDialogKt.NousAuthDialog$lambda$8(this.$browserOpened$delegate)) {
                NousAuthDialogKt.NousAuthDialog$lambda$9(this.$browserOpened$delegate, true);
                Intent intentAddFlags = new Intent("android.intent.action.VIEW", Uri.parse(this.$s.getVerificationUriComplete())).addFlags(268435456);
                Intrinsics.checkNotNullExpressionValue(intentAddFlags, "addFlags(...)");
                Context context = this.$context;
                try {
                    Result.Companion companion = Result.Companion;
                    context.startActivity(intentAddFlags);
                    Result.constructor-impl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.Companion;
                    Result.constructor-impl(ResultKt.createFailure(th));
                }
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
