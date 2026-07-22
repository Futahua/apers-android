package com.hermes.android;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LabsSettings.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005J\u001e\u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/hermes/android/LabsSettings;", "", "<init>", "()V", "PREFS", "", "isEnabled", "", "context", "Landroid/content/Context;", "featureId", "setEnabled", "", "enabled", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LabsSettings {
    public static final int $stable = 0;
    public static final LabsSettings INSTANCE = new LabsSettings();
    private static final String PREFS = "labs";

    private LabsSettings() {
    }

    public final boolean isEnabled(Context context, String featureId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        return context.getSharedPreferences(PREFS, 0).getBoolean("enabled_" + featureId, false);
    }

    public final void setEnabled(Context context, String featureId, boolean enabled) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        context.getSharedPreferences(PREFS, 0).edit().putBoolean("enabled_" + featureId, enabled).apply();
    }
}
