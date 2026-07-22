package com.hermes.android;

import android.content.Context;
import com.hermes.android.llama.BackendPreference;
import com.hermes.android.llama.LocalLlmPaths;
import com.hermes.android.llama.ModelDownloadState;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: LocalLlmModuleBridge.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0007H\u0002J\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\u0018\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/hermes/android/NpuModuleBridge;", "", "<init>", "()V", "ENTRY", "", "entry", "Ljava/lang/Class;", "isModuleAvailable", "", "isBundleReady", "context", "Landroid/content/Context;", "isRunnableOnThisDevice", "downloadBundle", "Lkotlinx/coroutines/flow/Flow;", "Lcom/hermes/android/llama/ModelDownloadState;", "deleteBundle", "bundleDownloadBytes", "", "bundleContextSize", "", "activeContextLength", "LLAMA_CPU_CONTEXT", "unload", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NpuModuleBridge {
    public static final int $stable = 0;
    private static final String ENTRY = "com.hermes.android.llama.NpuModuleEntryPoint";
    public static final NpuModuleBridge INSTANCE = new NpuModuleBridge();
    private static final int LLAMA_CPU_CONTEXT = 4096;

    private NpuModuleBridge() {
    }

    private final Class<?> entry() {
        try {
            return Class.forName(ENTRY);
        } catch (Throwable unused) {
            return null;
        }
    }

    public final boolean isModuleAvailable() {
        return entry() != null;
    }

    public final boolean isBundleReady(Context context) {
        Method method;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Class<?> clsEntry = entry();
            Object objInvoke = (clsEntry == null || (method = clsEntry.getMethod("isBundleReady", Context.class)) == null) ? null : method.invoke(null, context.getApplicationContext());
            Boolean bool = objInvoke instanceof Boolean ? (Boolean) objInvoke : null;
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final boolean isRunnableOnThisDevice(Context context) {
        Method method;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Class<?> clsEntry = entry();
            Object objInvoke = (clsEntry == null || (method = clsEntry.getMethod("isRunnableOnThisDevice", Context.class)) == null) ? null : method.invoke(null, context.getApplicationContext());
            Boolean bool = objInvoke instanceof Boolean ? (Boolean) objInvoke : null;
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final Flow<ModelDownloadState> downloadBundle(Context context) {
        Method method;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Class<?> clsEntry = entry();
            Object objInvoke = (clsEntry == null || (method = clsEntry.getMethod("downloadBundle", Context.class)) == null) ? null : method.invoke(null, context.getApplicationContext());
            if (objInvoke instanceof Flow) {
                return (Flow) objInvoke;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public final boolean deleteBundle(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Class<?> clsEntry = entry();
        if (clsEntry == null) {
            LocalLlmPaths localLlmPaths = LocalLlmPaths.INSTANCE;
            Intrinsics.checkNotNull(applicationContext);
            FilesKt.deleteRecursively(localLlmPaths.npuRootDir(applicationContext));
            LocalLlmPaths.INSTANCE.npuDownloadTmp(applicationContext).delete();
            return !r0.exists();
        }
        try {
            Object objInvoke = clsEntry.getMethod("deleteBundle", Context.class).invoke(null, applicationContext);
            Boolean bool = objInvoke instanceof Boolean ? (Boolean) objInvoke : null;
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final long bundleDownloadBytes(Context context) {
        Method method;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Class<?> clsEntry = entry();
            Object objInvoke = (clsEntry == null || (method = clsEntry.getMethod("bundleDownloadBytes", Context.class)) == null) ? null : method.invoke(null, context.getApplicationContext());
            Long l = objInvoke instanceof Long ? (Long) objInvoke : null;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public final int bundleContextSize(Context context) {
        Method method;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Class<?> clsEntry = entry();
            Object objInvoke = (clsEntry == null || (method = clsEntry.getMethod("bundleContextSize", Context.class)) == null) ? null : method.invoke(null, context.getApplicationContext());
            Integer num = objInvoke instanceof Integer ? (Integer) objInvoke : null;
            if (num != null) {
                return num.intValue();
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public final int activeContextLength(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!Intrinsics.areEqual(BackendPreference.INSTANCE.read(context), "npu")) {
            return 4096;
        }
        Integer numValueOf = Integer.valueOf(bundleContextSize(context));
        if (numValueOf.intValue() <= 0) {
            numValueOf = null;
        }
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        return 4096;
    }

    public final boolean unload() {
        Class<?> clsEntry = entry();
        if (clsEntry == null) {
            return true;
        }
        try {
            Object objInvoke = clsEntry.getMethod("unload", new Class[0]).invoke(null, new Object[0]);
            Boolean bool = objInvoke instanceof Boolean ? (Boolean) objInvoke : null;
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }
}
