package com.hermes.android.chat;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ChatSkinState.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/hermes/android/chat/BubbleRole;", "", "<init>", "(Ljava/lang/String;I)V", "USER", "ASSISTANT", "TOOL", "SYSTEM", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BubbleRole {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BubbleRole[] $VALUES;
    public static final BubbleRole USER = new BubbleRole("USER", 0);
    public static final BubbleRole ASSISTANT = new BubbleRole("ASSISTANT", 1);
    public static final BubbleRole TOOL = new BubbleRole("TOOL", 2);
    public static final BubbleRole SYSTEM = new BubbleRole("SYSTEM", 3);

    private static final /* synthetic */ BubbleRole[] $values() {
        return new BubbleRole[]{USER, ASSISTANT, TOOL, SYSTEM};
    }

    public static EnumEntries<BubbleRole> getEntries() {
        return $ENTRIES;
    }

    static {
        BubbleRole[] bubbleRoleArr$values = $values();
        $VALUES = bubbleRoleArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(bubbleRoleArr$values);
    }

    private BubbleRole(String str, int i) {
    }

    public static BubbleRole valueOf(String str) {
        return (BubbleRole) Enum.valueOf(BubbleRole.class, str);
    }

    public static BubbleRole[] values() {
        return (BubbleRole[]) $VALUES.clone();
    }
}
