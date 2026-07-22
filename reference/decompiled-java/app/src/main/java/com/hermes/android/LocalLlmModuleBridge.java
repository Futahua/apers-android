package com.hermes.android;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.google.android.gms.common.internal.ImagesContract;
import com.hermes.android.llama.ActiveModelStore;
import com.hermes.android.llama.LocalInferenceEngine;
import com.hermes.android.llama.LocalLlmPaths;
import com.hermes.android.llama.ModelDownloadState;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: LocalLlmModuleBridge.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001:\u00015B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bJ \u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0012H\u0002J\u0006\u0010\u0013\u001a\u00020\u000bJ/\u0010\u0014\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0015\u001a\u00020\u00052\u0016\u0010\u0016\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0017\"\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0002\u0010\u0018J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0005J\u0016\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000bJ\u000e\u0010 \u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010!\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001cJ\b\u0010\"\u001a\u0004\u0018\u00010#J\u0016\u0010$\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%2\u0006\u0010\u001b\u001a\u00020\u001cJ\u001e\u0010'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020\u0005J&\u0010)\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0005J\u000e\u0010-\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010.\u001a\u00020\u0005J\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u00020\u0005J\u000e\u00102\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u00103\u001a\u000204R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Lcom/hermes/android/LocalLlmModuleBridge;", "", "<init>", "()V", "TAG", "", "ENTRY_CLASS", "PROVIDER_ID", "localLlmClickAction", "Lcom/hermes/android/LocalLlmModuleBridge$LocalLlmClickAction;", "moduleInstalled", "", "runtimeReady", "loadSucceededForBackend", "isModelLoaded", "backendInfo", "expectedPrefix", "entry", "Ljava/lang/Class;", "isModuleAvailable", "invoke", "name", "args", "", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;", "ensureServerRunningIfConfigured", "", "context", "Landroid/content/Context;", "activeProviderId", "ensureServerRunning", "userInitiated", "isModelReady", "isRuntimeReady", "currentEngine", "Lcom/hermes/android/llama/LocalInferenceEngine;", "downloadRecommendedModel", "Lkotlinx/coroutines/flow/Flow;", "Lcom/hermes/android/llama/ModelDownloadState;", "downloadModelFromUrl", ImagesContract.URL, "importModelFromUri", "uri", "Landroid/net/Uri;", "displayName", "deleteActiveModel", "recommendedModelName", "recommendedModelSizeBytes", "", "importedModelDefaultName", "listGpuDevices", "defaultGpuLayers", "", "LocalLlmClickAction", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LocalLlmModuleBridge {
    public static final int $stable = 0;
    private static final String ENTRY_CLASS = "com.hermes.android.llama.LocalLlmModuleEntryPoint";
    public static final LocalLlmModuleBridge INSTANCE = new LocalLlmModuleBridge();
    public static final String PROVIDER_ID = "local_llm";
    private static final String TAG = "LocalLlmModuleBridge";

    private LocalLlmModuleBridge() {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: LocalLlmModuleBridge.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/hermes/android/LocalLlmModuleBridge$LocalLlmClickAction;", "", "<init>", "(Ljava/lang/String;I)V", "DIRECT_SWITCH", "OPEN_SETUP", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class LocalLlmClickAction {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ LocalLlmClickAction[] $VALUES;
        public static final LocalLlmClickAction DIRECT_SWITCH = new LocalLlmClickAction("DIRECT_SWITCH", 0);
        public static final LocalLlmClickAction OPEN_SETUP = new LocalLlmClickAction("OPEN_SETUP", 1);

        private static final /* synthetic */ LocalLlmClickAction[] $values() {
            return new LocalLlmClickAction[]{DIRECT_SWITCH, OPEN_SETUP};
        }

        public static EnumEntries<LocalLlmClickAction> getEntries() {
            return $ENTRIES;
        }

        private LocalLlmClickAction(String str, int i) {
        }

        static {
            LocalLlmClickAction[] localLlmClickActionArr$values = $values();
            $VALUES = localLlmClickActionArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(localLlmClickActionArr$values);
        }

        public static LocalLlmClickAction valueOf(String str) {
            return (LocalLlmClickAction) Enum.valueOf(LocalLlmClickAction.class, str);
        }

        public static LocalLlmClickAction[] values() {
            return (LocalLlmClickAction[]) $VALUES.clone();
        }
    }

    public final LocalLlmClickAction localLlmClickAction(boolean moduleInstalled, boolean runtimeReady) {
        return (moduleInstalled && runtimeReady) ? LocalLlmClickAction.DIRECT_SWITCH : LocalLlmClickAction.OPEN_SETUP;
    }

    public final boolean loadSucceededForBackend(boolean isModelLoaded, String backendInfo, String expectedPrefix) {
        Intrinsics.checkNotNullParameter(expectedPrefix, "expectedPrefix");
        return isModelLoaded && backendInfo != null && StringsKt.startsWith$default(backendInfo, expectedPrefix, false, 2, (Object) null);
    }

    private final Class<?> entry() {
        try {
            return Class.forName(ENTRY_CLASS);
        } catch (Throwable unused) {
            return null;
        }
    }

    public final boolean isModuleAvailable() {
        return entry() != null;
    }

    private final Object invoke(String name, Object... args) {
        Class<?> cls;
        Class<?> clsEntry = entry();
        if (clsEntry == null) {
            return null;
        }
        try {
            Object obj = clsEntry.getField("INSTANCE").get(null);
            ArrayList arrayList = new ArrayList(args.length);
            for (Object obj2 : args) {
                if (obj2 instanceof Context) {
                    cls = Context.class;
                } else if (obj2 instanceof Uri) {
                    cls = Uri.class;
                } else if (obj2 instanceof String) {
                    cls = String.class;
                } else if (obj2 instanceof Boolean) {
                    cls = Boolean.TYPE;
                } else if (obj2 == null || (cls = obj2.getClass()) == null) {
                    cls = Object.class;
                }
                arrayList.add(cls);
            }
            Class[] clsArr = (Class[]) arrayList.toArray(new Class[0]);
            return clsEntry.getMethod(name, (Class[]) Arrays.copyOf(clsArr, clsArr.length)).invoke(obj, Arrays.copyOf(args, args.length));
        } catch (Exception e) {
            Log.e(TAG, "reflection call " + name + " failed", e);
            return null;
        }
    }

    public final void ensureServerRunningIfConfigured(Context context, String activeProviderId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(activeProviderId, "activeProviderId");
        if (Intrinsics.areEqual(activeProviderId, PROVIDER_ID)) {
            if (entry() == null) {
                Log.w(TAG, "llama_native module not installed — cannot ensure local LLM server running");
            } else {
                invoke("ensureServerRunning", context.getApplicationContext());
            }
        }
    }

    public final void ensureServerRunning(Context context, boolean userInitiated) {
        Intrinsics.checkNotNullParameter(context, "context");
        invoke("ensureServerRunning", context.getApplicationContext(), Boolean.valueOf(userInitiated));
    }

    public final boolean isModelReady(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object objInvoke = invoke("isModelReady", context.getApplicationContext());
        Boolean bool = objInvoke instanceof Boolean ? (Boolean) objInvoke : null;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final boolean isRuntimeReady(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object objInvoke = invoke("isRuntimeReady", context.getApplicationContext());
        Boolean bool = objInvoke instanceof Boolean ? (Boolean) objInvoke : null;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final LocalInferenceEngine currentEngine() {
        Object objInvoke = invoke("currentEngine", new Object[0]);
        if (objInvoke instanceof LocalInferenceEngine) {
            return (LocalInferenceEngine) objInvoke;
        }
        return null;
    }

    public final Flow<ModelDownloadState> downloadRecommendedModel(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object objInvoke = invoke("downloadRecommendedModel", context.getApplicationContext());
        if (objInvoke instanceof Flow) {
            return (Flow) objInvoke;
        }
        return null;
    }

    public final Flow<ModelDownloadState> downloadModelFromUrl(Context context, String url) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, ImagesContract.URL);
        Object objInvoke = invoke("downloadModelFromUrl", context.getApplicationContext(), url);
        if (objInvoke instanceof Flow) {
            return (Flow) objInvoke;
        }
        return null;
    }

    public final Flow<ModelDownloadState> importModelFromUri(Context context, Uri uri, String displayName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        Object objInvoke = invoke("importModelFromUri", context.getApplicationContext(), uri, displayName);
        if (objInvoke instanceof Flow) {
            return (Flow) objInvoke;
        }
        return null;
    }

    public final boolean deleteActiveModel(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        if (entry() == null) {
            LocalLlmPaths localLlmPaths = LocalLlmPaths.INSTANCE;
            Intrinsics.checkNotNull(applicationContext);
            File fileActiveModelFile = localLlmPaths.activeModelFile(applicationContext);
            File fileActiveModelTmpFile = LocalLlmPaths.INSTANCE.activeModelTmpFile(applicationContext);
            fileActiveModelFile.delete();
            fileActiveModelTmpFile.delete();
            try {
                Result.Companion companion = Result.Companion;
                LocalLlmModuleBridge localLlmModuleBridge = this;
                ActiveModelStore.INSTANCE.clear(applicationContext);
                Result.constructor-impl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                Result.constructor-impl(ResultKt.createFailure(th));
            }
            return (fileActiveModelFile.exists() || fileActiveModelTmpFile.exists()) ? false : true;
        }
        Object objInvoke = invoke("deleteActiveModel", applicationContext);
        Boolean bool = objInvoke instanceof Boolean ? (Boolean) objInvoke : null;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final String recommendedModelName() {
        Object objInvoke = invoke("recommendedModelName", new Object[0]);
        String str = objInvoke instanceof String ? (String) objInvoke : null;
        return str == null ? "MiniCPM5-1B" : str;
    }

    public final long recommendedModelSizeBytes() {
        Object objInvoke = invoke("recommendedModelSizeBytes", new Object[0]);
        Long l = objInvoke instanceof Long ? (Long) objInvoke : null;
        if (l != null) {
            return l.longValue();
        }
        return 0L;
    }

    public final String importedModelDefaultName() {
        Object objInvoke = invoke("importedModelDefaultName", new Object[0]);
        String str = objInvoke instanceof String ? (String) objInvoke : null;
        return str == null ? "Imported model" : str;
    }

    public final String listGpuDevices(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object objInvoke = invoke("listGpuDevices", context.getApplicationContext());
        String str = objInvoke instanceof String ? (String) objInvoke : null;
        return str == null ? "" : str;
    }

    public final int defaultGpuLayers() {
        Object objInvoke = invoke("defaultGpuLayers", new Object[0]);
        Integer num = objInvoke instanceof Integer ? (Integer) objInvoke : null;
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }
}
