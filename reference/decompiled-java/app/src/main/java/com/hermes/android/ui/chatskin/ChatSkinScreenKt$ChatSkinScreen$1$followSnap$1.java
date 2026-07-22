package com.hermes.android.ui.chatskin;

import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: ChatSkinScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.chatskin.ChatSkinScreenKt", f = "ChatSkinScreen.kt", i = {0}, l = {162}, m = "ChatSkinScreen$lambda$22$followSnap", n = {"programmaticDepth$delegate"}, s = {"L$0"})
final class ChatSkinScreenKt$ChatSkinScreen$1$followSnap$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    ChatSkinScreenKt$ChatSkinScreen$1$followSnap$1(Continuation<? super ChatSkinScreenKt$ChatSkinScreen$1$followSnap$1> continuation) {
        super(continuation);
    }

    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ChatSkinScreenKt.ChatSkinScreen$lambda$22$followSnap(null, null, null, (Continuation) this);
    }
}
