package com.hermes.android.llama;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LocalInferenceTypes.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, d2 = {"Lcom/hermes/android/llama/ParsedAssistantOutput;", BuildConfig.FLAVOR, "content", BuildConfig.FLAVOR, "toolCalls", BuildConfig.FLAVOR, "Lcom/hermes/android/llama/ToolCall;", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "getContent", "()Ljava/lang/String;", "getToolCalls", "()Ljava/util/List;", "component1", "component2", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final /* data */ class ParsedAssistantOutput {
    public static final int $stable = 8;
    private final String content;
    private final List<ToolCall> toolCalls;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ParsedAssistantOutput copy$default(ParsedAssistantOutput parsedAssistantOutput, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = parsedAssistantOutput.content;
        }
        if ((i & 2) != 0) {
            list = parsedAssistantOutput.toolCalls;
        }
        return parsedAssistantOutput.copy(str, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    public final List<ToolCall> component2() {
        return this.toolCalls;
    }

    public final ParsedAssistantOutput copy(String content, List<ToolCall> toolCalls) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(toolCalls, "toolCalls");
        return new ParsedAssistantOutput(content, toolCalls);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ParsedAssistantOutput)) {
            return false;
        }
        ParsedAssistantOutput parsedAssistantOutput = (ParsedAssistantOutput) other;
        return Intrinsics.areEqual(this.content, parsedAssistantOutput.content) && Intrinsics.areEqual(this.toolCalls, parsedAssistantOutput.toolCalls);
    }

    public int hashCode() {
        return (this.content.hashCode() * 31) + this.toolCalls.hashCode();
    }

    public String toString() {
        return "ParsedAssistantOutput(content=" + this.content + ", toolCalls=" + this.toolCalls + ")";
    }

    public ParsedAssistantOutput(String str, List<ToolCall> list) {
        Intrinsics.checkNotNullParameter(str, "content");
        Intrinsics.checkNotNullParameter(list, "toolCalls");
        this.content = str;
        this.toolCalls = list;
    }

    public final String getContent() {
        return this.content;
    }

    public final List<ToolCall> getToolCalls() {
        return this.toolCalls;
    }
}
