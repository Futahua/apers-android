package com.hermes.android.chat;

import com.hermes.android.chat.ChatSkinState;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatSkinController.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcom/hermes/android/chat/InitApplyGate;", "", "<init>", "()V", "canApply", "", "disposed", "phase", "Lcom/hermes/android/chat/ChatSkinState$Phase;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class InitApplyGate {
    public static final int $stable = 0;
    public static final InitApplyGate INSTANCE = new InitApplyGate();

    private InitApplyGate() {
    }

    public final boolean canApply(boolean disposed, ChatSkinState.Phase phase) {
        Intrinsics.checkNotNullParameter(phase, "phase");
        return !disposed && phase == ChatSkinState.Phase.INITIALIZING;
    }
}
