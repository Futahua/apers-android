package com.hermes.android.llama;

import android.content.Context;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LocalLlmPaths.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\u000e"}, d2 = {"Lcom/hermes/android/llama/LocalLlmPaths;", BuildConfig.FLAVOR, "<init>", "()V", "modelsDir", "Ljava/io/File;", "context", "Landroid/content/Context;", "activeModelFile", "activeModelTmpFile", "npuRootDir", "npuBundleDir", "npuStagingDir", "npuDownloadTmp", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class LocalLlmPaths {
    public static final int $stable = 0;
    public static final LocalLlmPaths INSTANCE = new LocalLlmPaths();

    private LocalLlmPaths() {
    }

    public final File modelsDir(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new File(context.getFilesDir(), "models");
    }

    public final File activeModelFile(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new File(modelsDir(context), "active-model.gguf");
    }

    public final File activeModelTmpFile(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new File(modelsDir(context), "active-model.gguf.tmp");
    }

    public final File npuRootDir(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new File(context.getFilesDir(), BackendPreference.VALUE_NPU);
    }

    public final File npuBundleDir(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new File(npuRootDir(context), "bundle");
    }

    public final File npuStagingDir(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new File(npuRootDir(context), "bundle.staging");
    }

    public final File npuDownloadTmp(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new File(context.getCacheDir(), "npu-bundle.tgz.tmp");
    }
}
