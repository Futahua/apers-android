package com.hermes.android.chat;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatSkinController.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0007¨\u0006\n"}, d2 = {"Lcom/hermes/android/chat/ChatSkinBubbleMapper;", "", "<init>", "()V", "toBubble", "Lcom/hermes/android/chat/ChatBubble;", "role", "", "content", "toolName", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ChatSkinBubbleMapper {
    public static final int $stable = 0;
    public static final ChatSkinBubbleMapper INSTANCE = new ChatSkinBubbleMapper();

    private ChatSkinBubbleMapper() {
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ChatBubble toBubble(String role, String content, String toolName) {
        BubbleRole bubbleRole;
        Intrinsics.checkNotNullParameter(role, "role");
        Intrinsics.checkNotNullParameter(content, "content");
        int iHashCode = role.hashCode();
        if (iHashCode != 3565976) {
            if (iHashCode != 3599307) {
                if (iHashCode == 1429828318 && role.equals("assistant")) {
                    bubbleRole = BubbleRole.ASSISTANT;
                } else {
                    bubbleRole = BubbleRole.SYSTEM;
                }
            } else if (role.equals("user")) {
                bubbleRole = BubbleRole.USER;
            }
        } else if (role.equals("tool")) {
            bubbleRole = BubbleRole.TOOL;
        }
        return new ChatBubble(bubbleRole, content, toolName, false, 8, null);
    }
}
