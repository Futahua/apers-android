package com.hermes.android.llama;

import android.os.Build;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;

/* JADX INFO: compiled from: NpuSupport.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0007\u001a\u00020\bR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/hermes/android/llama/NpuSupport;", BuildConfig.FLAVOR, "<init>", "()V", "SUPPORTED_SOC_MODELS", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "isSocSupported", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class NpuSupport {
    public static final NpuSupport INSTANCE = new NpuSupport();
    private static final Set<String> SUPPORTED_SOC_MODELS = SetsKt.setOf("SM8750");
    public static final int $stable = 8;

    private NpuSupport() {
    }

    public final boolean isSocSupported() {
        return Build.VERSION.SDK_INT >= 31 && SUPPORTED_SOC_MODELS.contains(Build.SOC_MODEL);
    }
}
