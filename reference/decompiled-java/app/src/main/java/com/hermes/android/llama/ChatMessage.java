package com.hermes.android.llama;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LocalInferenceTypes.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003JG\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\r¨\u0006\u001f"}, d2 = {"Lcom/hermes/android/llama/ChatMessage;", BuildConfig.FLAVOR, "role", BuildConfig.FLAVOR, "content", "toolCalls", BuildConfig.FLAVOR, "Lcom/hermes/android/llama/ToolCall;", "toolCallId", AppMeasurementSdk.ConditionalUserProperty.NAME, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getRole", "()Ljava/lang/String;", "getContent", "getToolCalls", "()Ljava/util/List;", "getToolCallId", "getName", "component1", "component2", "component3", "component4", "component5", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final /* data */ class ChatMessage {
    public static final int $stable = 8;
    private final String content;
    private final String name;
    private final String role;
    private final String toolCallId;
    private final List<ToolCall> toolCalls;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ChatMessage copy$default(ChatMessage chatMessage, String str, String str2, List list, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = chatMessage.role;
        }
        if ((i & 2) != 0) {
            str2 = chatMessage.content;
        }
        String str5 = str2;
        if ((i & 4) != 0) {
            list = chatMessage.toolCalls;
        }
        List list2 = list;
        if ((i & 8) != 0) {
            str3 = chatMessage.toolCallId;
        }
        String str6 = str3;
        if ((i & 16) != 0) {
            str4 = chatMessage.name;
        }
        return chatMessage.copy(str, str5, list2, str6, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getRole() {
        return this.role;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    public final List<ToolCall> component3() {
        return this.toolCalls;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getToolCallId() {
        return this.toolCallId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final ChatMessage copy(String role, String content, List<ToolCall> toolCalls, String toolCallId, String name) {
        Intrinsics.checkNotNullParameter(role, "role");
        Intrinsics.checkNotNullParameter(content, "content");
        return new ChatMessage(role, content, toolCalls, toolCallId, name);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ChatMessage)) {
            return false;
        }
        ChatMessage chatMessage = (ChatMessage) other;
        return Intrinsics.areEqual(this.role, chatMessage.role) && Intrinsics.areEqual(this.content, chatMessage.content) && Intrinsics.areEqual(this.toolCalls, chatMessage.toolCalls) && Intrinsics.areEqual(this.toolCallId, chatMessage.toolCallId) && Intrinsics.areEqual(this.name, chatMessage.name);
    }

    public int hashCode() {
        int iHashCode = ((this.role.hashCode() * 31) + this.content.hashCode()) * 31;
        List<ToolCall> list = this.toolCalls;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.toolCallId;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.name;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "ChatMessage(role=" + this.role + ", content=" + this.content + ", toolCalls=" + this.toolCalls + ", toolCallId=" + this.toolCallId + ", name=" + this.name + ")";
    }

    public ChatMessage(String str, String str2, List<ToolCall> list, String str3, String str4) {
        Intrinsics.checkNotNullParameter(str, "role");
        Intrinsics.checkNotNullParameter(str2, "content");
        this.role = str;
        this.content = str2;
        this.toolCalls = list;
        this.toolCallId = str3;
        this.name = str4;
    }

    public /* synthetic */ ChatMessage(String str, String str2, List list, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : list, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4);
    }

    public final String getRole() {
        return this.role;
    }

    public final String getContent() {
        return this.content;
    }

    public final List<ToolCall> getToolCalls() {
        return this.toolCalls;
    }

    public final String getToolCallId() {
        return this.toolCallId;
    }

    public final String getName() {
        return this.name;
    }
}
