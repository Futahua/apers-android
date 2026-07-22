package com.hermes.android.chat;

import kotlin.Metadata;

/* JADX INFO: compiled from: ChatSkinController.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\b\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007J&\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007¨\u0006\u000f"}, d2 = {"Lcom/hermes/android/chat/ChatTurnSettleWait;", "", "<init>", "()V", "shouldKeepWaiting", "", "elapsedMs", "", "sawMidTurnEver", "noEvidenceGiveUpMs", "fuseMs", "pollInterval", "fastWindowMs", "fastIntervalMs", "slowIntervalMs", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ChatTurnSettleWait {
    public static final int $stable = 0;
    public static final ChatTurnSettleWait INSTANCE = new ChatTurnSettleWait();

    public final long pollInterval(long elapsedMs, long fastWindowMs, long fastIntervalMs, long slowIntervalMs) {
        return elapsedMs < fastWindowMs ? fastIntervalMs : slowIntervalMs;
    }

    public final boolean shouldKeepWaiting(long elapsedMs, boolean sawMidTurnEver, long noEvidenceGiveUpMs, long fuseMs) {
        if (sawMidTurnEver) {
            if (elapsedMs < fuseMs) {
                return true;
            }
        } else if (elapsedMs < noEvidenceGiveUpMs) {
            return true;
        }
        return false;
    }

    private ChatTurnSettleWait() {
    }
}
