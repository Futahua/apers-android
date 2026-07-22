package com.hermes.android.ui.localllm;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/hermes/android/ui/localllm/DlTarget;", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;I)V", "GGUF", "NPU_BUNDLE", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
final class DlTarget {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DlTarget[] $VALUES;
    public static final DlTarget GGUF = new DlTarget("GGUF", 0);
    public static final DlTarget NPU_BUNDLE = new DlTarget("NPU_BUNDLE", 1);

    private static final /* synthetic */ DlTarget[] $values() {
        return new DlTarget[]{GGUF, NPU_BUNDLE};
    }

    public static EnumEntries<DlTarget> getEntries() {
        return $ENTRIES;
    }

    static {
        DlTarget[] dlTargetArr$values = $values();
        $VALUES = dlTargetArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(dlTargetArr$values);
    }

    private DlTarget(String str, int i) {
    }

    public static DlTarget valueOf(String str) {
        return (DlTarget) Enum.valueOf(DlTarget.class, str);
    }

    public static DlTarget[] values() {
        return (DlTarget[]) $VALUES.clone();
    }
}
