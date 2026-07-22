package com.hermes.android;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/hermes/android/AppPhase;", "", "<init>", "(Ljava/lang/String;I)V", "LOADING", "ONBOARDING", "PAIRING", "INSTALLING", "READY", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AppPhase {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AppPhase[] $VALUES;
    public static final AppPhase LOADING = new AppPhase("LOADING", 0);
    public static final AppPhase ONBOARDING = new AppPhase("ONBOARDING", 1);
    public static final AppPhase PAIRING = new AppPhase("PAIRING", 2);
    public static final AppPhase INSTALLING = new AppPhase("INSTALLING", 3);
    public static final AppPhase READY = new AppPhase("READY", 4);

    private static final /* synthetic */ AppPhase[] $values() {
        return new AppPhase[]{LOADING, ONBOARDING, PAIRING, INSTALLING, READY};
    }

    public static EnumEntries<AppPhase> getEntries() {
        return $ENTRIES;
    }

    static {
        AppPhase[] appPhaseArr$values = $values();
        $VALUES = appPhaseArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(appPhaseArr$values);
    }

    private AppPhase(String str, int i) {
    }

    public static AppPhase valueOf(String str) {
        return (AppPhase) Enum.valueOf(AppPhase.class, str);
    }

    public static AppPhase[] values() {
        return (AppPhase[]) $VALUES.clone();
    }
}
