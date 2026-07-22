package com.hermes.android.llama;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LocalInferenceTypes.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/hermes/android/llama/ToolCall;", BuildConfig.FLAVOR, "id", BuildConfig.FLAVOR, AppMeasurementSdk.ConditionalUserProperty.NAME, "argumentsJson", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getName", "getArgumentsJson", "component1", "component2", "component3", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final /* data */ class ToolCall {
    public static final int $stable = 0;
    private final String argumentsJson;
    private final String id;
    private final String name;

    public static /* synthetic */ ToolCall copy$default(ToolCall toolCall, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = toolCall.id;
        }
        if ((i & 2) != 0) {
            str2 = toolCall.name;
        }
        if ((i & 4) != 0) {
            str3 = toolCall.argumentsJson;
        }
        return toolCall.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getArgumentsJson() {
        return this.argumentsJson;
    }

    public final ToolCall copy(String id, String name, String argumentsJson) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
        Intrinsics.checkNotNullParameter(argumentsJson, "argumentsJson");
        return new ToolCall(id, name, argumentsJson);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ToolCall)) {
            return false;
        }
        ToolCall toolCall = (ToolCall) other;
        return Intrinsics.areEqual(this.id, toolCall.id) && Intrinsics.areEqual(this.name, toolCall.name) && Intrinsics.areEqual(this.argumentsJson, toolCall.argumentsJson);
    }

    public int hashCode() {
        return (((this.id.hashCode() * 31) + this.name.hashCode()) * 31) + this.argumentsJson.hashCode();
    }

    public String toString() {
        return "ToolCall(id=" + this.id + ", name=" + this.name + ", argumentsJson=" + this.argumentsJson + ")";
    }

    public ToolCall(String str, String str2, String str3) {
        Intrinsics.checkNotNullParameter(str, "id");
        Intrinsics.checkNotNullParameter(str2, AppMeasurementSdk.ConditionalUserProperty.NAME);
        Intrinsics.checkNotNullParameter(str3, "argumentsJson");
        this.id = str;
        this.name = str2;
        this.argumentsJson = str3;
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getArgumentsJson() {
        return this.argumentsJson;
    }
}
