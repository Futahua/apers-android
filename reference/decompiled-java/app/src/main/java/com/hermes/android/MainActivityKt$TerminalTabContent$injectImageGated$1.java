package com.hermes.android;

import android.content.Context;
import android.net.Uri;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.MutableState;
import com.hermes.android.chat.ChatSkinController;
import com.hermes.android.chat.ChatSkinState;
import com.hermes.android.chat.ImageAttachGate;
import com.termux.terminal.TerminalSession;
import java.io.File;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Result;
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
@DebugMetadata(c = "com.hermes.android.MainActivityKt$TerminalTabContent$injectImageGated$1", f = "MainActivity.kt", i = {0, 0, 0}, l = {3982}, m = "invokeSuspend", n = {"$this$launch", "savedPath", "injected"}, s = {"L$0", "L$1", "I$0"})
final class MainActivityKt$TerminalTabContent$injectImageGated$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ TerminalSession $chatActiveSession;
    final /* synthetic */ ChatSkinController $chatController;
    final /* synthetic */ MutableState<Long> $chatSurfaceGen$delegate;
    final /* synthetic */ AppCompatActivity $context;
    final /* synthetic */ String $imageAttachFailedMsg;
    final /* synthetic */ String $imageAttachedMsg;
    final /* synthetic */ long $originGen;
    final /* synthetic */ TerminalSessionManager $sessionManager;
    final /* synthetic */ TerminalSession $target;
    final /* synthetic */ Uri $uri;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$TerminalTabContent$injectImageGated$1(TerminalSessionManager terminalSessionManager, ChatSkinController chatSkinController, TerminalSession terminalSession, TerminalSession terminalSession2, long j, AppCompatActivity appCompatActivity, String str, String str2, Uri uri, MutableState<Long> mutableState, Continuation<? super MainActivityKt$TerminalTabContent$injectImageGated$1> continuation) {
        super(2, continuation);
        this.$sessionManager = terminalSessionManager;
        this.$chatController = chatSkinController;
        this.$chatActiveSession = terminalSession;
        this.$target = terminalSession2;
        this.$originGen = j;
        this.$context = appCompatActivity;
        this.$imageAttachedMsg = str;
        this.$imageAttachFailedMsg = str2;
        this.$uri = uri;
        this.$chatSurfaceGen$delegate = mutableState;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Continuation<Unit> mainActivityKt$TerminalTabContent$injectImageGated$1 = new MainActivityKt$TerminalTabContent$injectImageGated$1(this.$sessionManager, this.$chatController, this.$chatActiveSession, this.$target, this.$originGen, this.$context, this.$imageAttachedMsg, this.$imageAttachFailedMsg, this.$uri, this.$chatSurfaceGen$delegate, continuation);
        mainActivityKt$TerminalTabContent$injectImageGated$1.L$0 = obj;
        return mainActivityKt$TerminalTabContent$injectImageGated$1;
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b1 A[Catch: all -> 0x001b, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x001b, blocks: (B:6:0x0017, B:17:0x0057, B:19:0x0067, B:21:0x006b, B:25:0x007e, B:29:0x0087, B:31:0x0095, B:36:0x00b1), top: B:60:0x0017 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Throwable {
        AtomicReference atomicReference;
        int i;
        String str;
        Object obj2;
        String str2;
        ChatSkinController chatSkinController;
        String str3;
        Object obj3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        ChatSkinState.Phase phase = null;
        int i3 = 0;
        int i4 = 1;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            atomicReference = new AtomicReference(null);
            try {
                this.L$0 = coroutineScope;
                this.L$1 = atomicReference;
                this.I$0 = 0;
                this.label = 1;
                if (BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(atomicReference, this.$context, this.$uri, null), (Continuation) this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                i = 0;
                str2 = (String) atomicReference.get();
                TerminalSession activeSession = this.$sessionManager.getActiveSession();
                chatSkinController = this.$chatController;
                if (chatSkinController != null) {
                    phase = ((ChatSkinState) chatSkinController.getState().getValue()).getPhase();
                }
                ChatSkinState.Phase phase2 = phase;
                if (str2 == null) {
                    Toast.makeText(this.$context, this.$imageAttachFailedMsg, 0).show();
                    i4 = i;
                }
                if (i4 == 0) {
                    Result.Companion companion = Result.Companion;
                    obj3 = Result.constructor-impl(Boxing.boxBoolean(new File(str3).delete()));
                    Result.box-impl(obj3);
                }
                return Unit.INSTANCE;
            } catch (Throwable th) {
                th = th;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i = this.I$0;
            atomicReference = (AtomicReference) this.L$1;
            try {
                ResultKt.throwOnFailure(obj);
                str2 = (String) atomicReference.get();
                TerminalSession activeSession2 = this.$sessionManager.getActiveSession();
                chatSkinController = this.$chatController;
                if (chatSkinController != null && activeSession2 == this.$chatActiveSession) {
                    phase = ((ChatSkinState) chatSkinController.getState().getValue()).getPhase();
                }
                ChatSkinState.Phase phase22 = phase;
                if (str2 == null && activeSession2 != null) {
                    if (ImageAttachGate.INSTANCE.canInject(this.$target == activeSession2, this.$originGen, MainActivityKt.TerminalTabContent$lambda$422(this.$chatSurfaceGen$delegate), phase22)) {
                        activeSession2.write(ImageAttach.INSTANCE.imageCommand(str2));
                        try {
                            Toast.makeText(this.$context, this.$imageAttachedMsg, 0).show();
                        } catch (Throwable th2) {
                            th = th2;
                            i3 = 1;
                        }
                    }
                } else {
                    Toast.makeText(this.$context, this.$imageAttachFailedMsg, 0).show();
                    i4 = i;
                }
                if (i4 == 0 && (str3 = (String) atomicReference.get()) != null) {
                    try {
                        Result.Companion companion2 = Result.Companion;
                        obj3 = Result.constructor-impl(Boxing.boxBoolean(new File(str3).delete()));
                    } catch (Throwable th3) {
                        Result.Companion companion3 = Result.Companion;
                        obj3 = Result.constructor-impl(ResultKt.createFailure(th3));
                    }
                    Result.box-impl(obj3);
                }
                return Unit.INSTANCE;
            } catch (Throwable th4) {
                th = th4;
                i3 = i;
            }
        }
        if (i3 == 0 && (str = (String) atomicReference.get()) != null) {
            try {
                Result.Companion companion4 = Result.Companion;
                obj2 = Result.constructor-impl(Boxing.boxBoolean(new File(str).delete()));
            } catch (Throwable th5) {
                Result.Companion companion5 = Result.Companion;
                obj2 = Result.constructor-impl(ResultKt.createFailure(th5));
            }
            Result.box-impl(obj2);
        }
        throw th;
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$TerminalTabContent$injectImageGated$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$TerminalTabContent$injectImageGated$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AppCompatActivity $context;
        final /* synthetic */ AtomicReference<String> $savedPath;
        final /* synthetic */ Uri $uri;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AtomicReference<String> atomicReference, AppCompatActivity appCompatActivity, Uri uri, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$savedPath = atomicReference;
            this.$context = appCompatActivity;
            this.$uri = uri;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$savedPath, this.$context, this.$uri, continuation);
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
            this.$savedPath.set(ImageAttach.INSTANCE.saveToHermesImages((Context) this.$context, this.$uri));
            return Unit.INSTANCE;
        }
    }
}
