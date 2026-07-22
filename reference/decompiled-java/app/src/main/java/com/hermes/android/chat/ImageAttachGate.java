package com.hermes.android.chat;

import com.hermes.android.chat.ChatSkinState;
import kotlin.Metadata;

/* JADX INFO: compiled from: ChatSkinController.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J(\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b¨\u0006\f"}, d2 = {"Lcom/hermes/android/chat/ImageAttachGate;", "", "<init>", "()V", "canInject", "", "targetMatches", "originSurfaceGen", "", "surfaceGenNow", "chatPhase", "Lcom/hermes/android/chat/ChatSkinState$Phase;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ImageAttachGate {
    public static final int $stable = 0;
    public static final ImageAttachGate INSTANCE = new ImageAttachGate();

    private ImageAttachGate() {
    }

    public final boolean canInject(boolean targetMatches, long originSurfaceGen, long surfaceGenNow, ChatSkinState.Phase chatPhase) {
        if (targetMatches && originSurfaceGen == surfaceGenNow) {
            return chatPhase == null || chatPhase == ChatSkinState.Phase.IDLE;
        }
        return false;
    }
}
