package com.hermes.android.chat;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatSkinState.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J3\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/hermes/android/chat/ChatBubble;", "", "role", "Lcom/hermes/android/chat/BubbleRole;", "content", "", "toolName", "isLive", "", "<init>", "(Lcom/hermes/android/chat/BubbleRole;Ljava/lang/String;Ljava/lang/String;Z)V", "getRole", "()Lcom/hermes/android/chat/BubbleRole;", "getContent", "()Ljava/lang/String;", "getToolName", "()Z", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class ChatBubble {
    public static final int $stable = 0;
    private final String content;
    private final boolean isLive;
    private final BubbleRole role;
    private final String toolName;

    public static /* synthetic */ ChatBubble copy$default(ChatBubble chatBubble, BubbleRole bubbleRole, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            bubbleRole = chatBubble.role;
        }
        if ((i & 2) != 0) {
            str = chatBubble.content;
        }
        if ((i & 4) != 0) {
            str2 = chatBubble.toolName;
        }
        if ((i & 8) != 0) {
            z = chatBubble.isLive;
        }
        return chatBubble.copy(bubbleRole, str, str2, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final BubbleRole getRole() {
        return this.role;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getToolName() {
        return this.toolName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsLive() {
        return this.isLive;
    }

    public final ChatBubble copy(BubbleRole role, String content, String toolName, boolean isLive) {
        Intrinsics.checkNotNullParameter(role, "role");
        Intrinsics.checkNotNullParameter(content, "content");
        return new ChatBubble(role, content, toolName, isLive);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ChatBubble)) {
            return false;
        }
        ChatBubble chatBubble = (ChatBubble) other;
        return this.role == chatBubble.role && Intrinsics.areEqual(this.content, chatBubble.content) && Intrinsics.areEqual(this.toolName, chatBubble.toolName) && this.isLive == chatBubble.isLive;
    }

    public int hashCode() {
        int iHashCode = ((this.role.hashCode() * 31) + this.content.hashCode()) * 31;
        String str = this.toolName;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Boolean.hashCode(this.isLive);
    }

    public String toString() {
        return "ChatBubble(role=" + this.role + ", content=" + this.content + ", toolName=" + this.toolName + ", isLive=" + this.isLive + ")";
    }

    public ChatBubble(BubbleRole bubbleRole, String str, String str2, boolean z) {
        Intrinsics.checkNotNullParameter(bubbleRole, "role");
        Intrinsics.checkNotNullParameter(str, "content");
        this.role = bubbleRole;
        this.content = str;
        this.toolName = str2;
        this.isLive = z;
    }

    public /* synthetic */ ChatBubble(BubbleRole bubbleRole, String str, String str2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(bubbleRole, str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? false : z);
    }

    public final BubbleRole getRole() {
        return this.role;
    }

    public final String getContent() {
        return this.content;
    }

    public final String getToolName() {
        return this.toolName;
    }

    public final boolean isLive() {
        return this.isLive;
    }
}
