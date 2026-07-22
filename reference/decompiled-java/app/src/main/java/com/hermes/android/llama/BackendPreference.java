package com.hermes.android.llama;

import android.content.Context;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BackendPreference.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0005J\u0010\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/hermes/android/llama/BackendPreference;", BuildConfig.FLAVOR, "<init>", "()V", "VALUE_CPU", BuildConfig.FLAVOR, "VALUE_GPU", "VALUE_NPU", "PREFS_NAME", "KEY_BACKEND", "read", "context", "Landroid/content/Context;", "write", BuildConfig.FLAVOR, AppMeasurementSdk.ConditionalUserProperty.VALUE, "resolveGpuLayers", BuildConfig.FLAVOR, "pref", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class BackendPreference {
    public static final int $stable = 0;
    public static final BackendPreference INSTANCE = new BackendPreference();
    private static final String KEY_BACKEND = "compute_backend";
    private static final String PREFS_NAME = "hermes_llama_engine";
    public static final String VALUE_CPU = "cpu";
    public static final String VALUE_GPU = "gpu";
    public static final String VALUE_NPU = "npu";

    private BackendPreference() {
    }

    public final String read(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return context.getApplicationContext().getSharedPreferences(PREFS_NAME, 0).getString(KEY_BACKEND, null);
    }

    public final void write(Context context, String value) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(value, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        context.getApplicationContext().getSharedPreferences(PREFS_NAME, 0).edit().putString(KEY_BACKEND, value).apply();
    }

    public final int resolveGpuLayers(String pref) {
        if (Intrinsics.areEqual(pref, VALUE_CPU)) {
            return 0;
        }
        return Intrinsics.areEqual(pref, VALUE_GPU) ? 999 : -1;
    }
}
