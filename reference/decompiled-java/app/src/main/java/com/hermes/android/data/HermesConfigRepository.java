package com.hermes.android.data;

import android.util.Log;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.data.oauth.AuthJsonStore;
import java.io.File;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.yaml.snakeyaml.DumperOptions;
import org.yaml.snakeyaml.Yaml;

/* JADX INFO: compiled from: HermesConfigRepository.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 O2\u00020\u0001:\u0003OPQB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0002J\u0016\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\b\u0010\u000f\u001a\u00020\rH\u0002J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000bH\u0002J\u0016\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000bJ\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u000bJ.\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000bJE\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u000b2\b\b\u0002\u0010\u0019\u001a\u00020\u000b2\b\b\u0002\u0010\u0014\u001a\u00020\u000b2\b\b\u0002\u0010\u001c\u001a\u00020\u000b2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!¢\u0006\u0002\u0010\"J\u0016\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020!J\u000e\u0010%\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\u000bJ\u0010\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010\u0018\u001a\u00020\u000bJ4\u0010)\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010*2\u0014\u0010+\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00010*2\u0006\u0010\u0018\u001a\u00020\u000bH\u0002J\u001a\u0010,\u001a\u00020\u000b2\u0010\u0010-\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010*H\u0002J\u000e\u0010.\u001a\u00020/2\u0006\u0010\u0013\u001a\u00020\u000bJ\u0006\u00100\u001a\u00020/J\u0006\u00102\u001a\u000203J\u0016\u00104\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u000bJ\u0006\u00106\u001a\u00020\u000bJ\u0006\u00107\u001a\u00020\u000bJ\u0018\u00108\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b090\nJ\u0018\u0010:\u001a\u00020\r2\u0006\u0010;\u001a\u00020<2\b\b\u0002\u0010=\u001a\u00020/J\u000e\u0010>\u001a\u00020?2\u0006\u0010\u0018\u001a\u00020\u000bJF\u0010@\u001a\u00020\r2&\u0010A\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00010Bj\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u0001`C2\u0014\u0010D\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00010*H\u0002J\u0014\u0010E\u001a\u0004\u0018\u00010\u00012\b\u0010F\u001a\u0004\u0018\u00010\u0001H\u0002J\u001e\u0010G\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00010H2\u0006\u0010I\u001a\u00020JH\u0002J:\u0010K\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00010Bj\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u0001`C2\u0010\u0010L\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010*H\u0002J\b\u0010M\u001a\u00020\rH\u0002J\b\u0010N\u001a\u00020JH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u00101\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006R"}, d2 = {"Lcom/hermes/android/data/HermesConfigRepository;", BuildConfig.FLAVOR, "hermesDir", "Ljava/io/File;", "<init>", "(Ljava/io/File;)V", "envFile", "configFile", "managedCliMarker", "readManagedCli", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "writeManagedCli", BuildConfig.FLAVOR, "list", "clearManagedCli", "writeConfigAtomic", "content", "writeApiKey", "envVar", "apiKey", "setWebBackend", "backend", "upsertCustomProvider", AppMeasurementSdk.ConditionalUserProperty.NAME, "baseUrl", "apiKeyValue", "modelId", "apiMode", "writeModelConfig", "hermesProvider", "defaultModel", "contextLength", BuildConfig.FLAVOR, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "ensureLocalLlmDefaultsIfActive", "activeProviderId", "readActiveModelDefault", "expectedProvider", "readCustomProvider", "Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;", "normalizedCustomEntry", BuildConfig.FLAVOR, "root", "firstModelId", "entry", "hasApiKey", BuildConfig.FLAVOR, "hasAnyProviderConfigured", "flatViewKeys", "readMoaSection", "Lcom/hermes/android/data/MoaSection;", "effectiveCustomKey", "userInput", "readActiveProviderId", "readActiveMoaPresetName", "readCustomProviderNames", "Lkotlin/Pair;", "upsertMoaPreset", "preset", "Lcom/hermes/android/data/MoaPreset;", "setAsDefault", "deleteMoaPreset", "Lcom/hermes/android/data/HermesConfigRepository$MoaDeleteResult;", "refreshFlattenedView", "moa", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "presets", "deepCopyYaml", "v", "loadRootOrThrowForMoa", BuildConfig.FLAVOR, "yaml", "Lorg/yaml/snakeyaml/Yaml;", "stringKeyed", "m", "ensureDir", "buildYaml", "Companion", "CustomProviderConfig", "MoaDeleteResult", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class HermesConfigRepository {
    private static final int HERMES_MINIMUM_CONTEXT_LENGTH = 64000;
    private static final String LOCAL_LLM_PROVIDER_ID = "local_llm";
    private static final String TAG = "HermesConfig";
    private final File configFile;
    private final File envFile;
    private final List<String> flatViewKeys;
    private final File hermesDir;
    private final File managedCliMarker;
    public static final int $stable = 8;
    private static final Object configLock = new Object();
    private static final List<String> ON_DEVICE_TOOLSETS = CollectionsKt.listOf(new String[]{"web", "terminal", "file", "todo"});

    public HermesConfigRepository(File file) {
        Intrinsics.checkNotNullParameter(file, "hermesDir");
        this.hermesDir = file;
        this.envFile = new File(file, ".env");
        this.configFile = new File(file, "config.yaml");
        this.managedCliMarker = new File(file, ".hermes_managed_cli");
        this.flatViewKeys = CollectionsKt.listOf(new String[]{"reference_models", "aggregator", "reference_temperature", "aggregator_temperature", "max_tokens", "enabled"});
    }

    private final List<String> readManagedCli() {
        if (!this.managedCliMarker.isFile()) {
            return null;
        }
        List listSplit$default = StringsKt.split$default(FilesKt.readText$default(this.managedCliMarker, (Charset) null, 1, (Object) null), new String[]{"\n"}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSplit$default, 10));
        Iterator it = listSplit$default.iterator();
        while (it.hasNext()) {
            arrayList.add(StringsKt.trim((String) it.next()).toString());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((String) obj).length() > 0) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = arrayList2;
        if (arrayList3.isEmpty()) {
            return null;
        }
        return arrayList3;
    }

    private final void writeManagedCli(List<String> list) {
        try {
            Result.Companion companion = Result.Companion;
            HermesConfigRepository hermesConfigRepository = this;
            FilesKt.writeText$default(this.managedCliMarker, CollectionsKt.joinToString$default(list, "\n", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null), (Charset) null, 2, (Object) null);
            Result.constructor-impl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.constructor-impl(ResultKt.createFailure(th));
        }
    }

    private final void clearManagedCli() {
        try {
            Result.Companion companion = Result.Companion;
            HermesConfigRepository hermesConfigRepository = this;
            Result.constructor-impl(Boolean.valueOf(this.managedCliMarker.delete()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.constructor-impl(ResultKt.createFailure(th));
        }
    }

    private final void writeConfigAtomic(String content) throws Exception {
        File fileCreateTempFile = File.createTempFile("config-", ".tmp", this.hermesDir);
        try {
            Intrinsics.checkNotNull(fileCreateTempFile);
            FilesKt.writeText$default(fileCreateTempFile, content, (Charset) null, 2, (Object) null);
            if (fileCreateTempFile.renameTo(this.configFile)) {
                return;
            }
            FilesKt.writeText$default(this.configFile, content, (Charset) null, 2, (Object) null);
            fileCreateTempFile.delete();
        } catch (Exception e) {
            fileCreateTempFile.delete();
            throw e;
        }
    }

    public final void writeApiKey(String envVar, String apiKey) {
        Intrinsics.checkNotNullParameter(envVar, "envVar");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        synchronized (configLock) {
            if (StringsKt.isBlank(envVar)) {
                return;
            }
            ensureDir();
            ArrayList mutableList = this.envFile.exists() ? CollectionsKt.toMutableList(FilesKt.readLines$default(this.envFile, (Charset) null, 1, (Object) null)) : new ArrayList();
            Iterator it = mutableList.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                } else if (StringsKt.startsWith$default((String) it.next(), envVar + "=", false, 2, (Object) null)) {
                    break;
                } else {
                    i++;
                }
            }
            String str = envVar + "=" + apiKey;
            if (i >= 0) {
                mutableList.set(i, str);
            } else {
                mutableList.add(str);
            }
            String str2 = CollectionsKt.joinToString$default(mutableList, "\n", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null) + "\n";
            File fileCreateTempFile = File.createTempFile("env-", ".tmp", this.hermesDir);
            try {
                Intrinsics.checkNotNull(fileCreateTempFile);
                FilesKt.writeText$default(fileCreateTempFile, str2, (Charset) null, 2, (Object) null);
                if (!fileCreateTempFile.renameTo(this.envFile)) {
                    FilesKt.writeText$default(this.envFile, str2, (Charset) null, 2, (Object) null);
                    fileCreateTempFile.delete();
                }
                try {
                    this.envFile.setReadable(false, false);
                    this.envFile.setReadable(true, true);
                } catch (Exception unused) {
                }
                Log.i(TAG, "Wrote " + envVar + " to .env");
            } catch (Exception e) {
                fileCreateTempFile.delete();
                throw e;
            }
        }
    }

    public final void setWebBackend(String backend) {
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        Intrinsics.checkNotNullParameter(backend, "backend");
        synchronized (configLock) {
            if (StringsKt.isBlank(backend)) {
                return;
            }
            ensureDir();
            Yaml yamlBuildYaml = buildYaml();
            if (this.configFile.exists()) {
                try {
                    Map mapEmptyMap = (Map) yamlBuildYaml.load(FilesKt.readText$default(this.configFile, (Charset) null, 1, (Object) null));
                    if (mapEmptyMap == null) {
                        mapEmptyMap = MapsKt.emptyMap();
                    }
                    linkedHashMap = MapsKt.toMutableMap(mapEmptyMap);
                } catch (Exception unused) {
                    linkedHashMap = new LinkedHashMap();
                }
            } else {
                linkedHashMap = new LinkedHashMap();
            }
            Object obj = linkedHashMap.get("web");
            Map map = obj instanceof Map ? (Map) obj : null;
            if (map == null || (linkedHashMap2 = MapsKt.toMutableMap(map)) == null) {
                linkedHashMap2 = new LinkedHashMap();
            }
            linkedHashMap2.put("backend", backend);
            linkedHashMap.put("web", linkedHashMap2);
            String strDump = yamlBuildYaml.dump(linkedHashMap);
            Intrinsics.checkNotNullExpressionValue(strDump, "dump(...)");
            writeConfigAtomic(strDump);
            Log.i(TAG, "Set web.backend=" + backend);
        }
    }

    public final void upsertCustomProvider(String name, String baseUrl, String apiKeyValue, String modelId, String apiMode) {
        LinkedHashMap linkedHashMap;
        Intrinsics.checkNotNullParameter(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Intrinsics.checkNotNullParameter(apiKeyValue, "apiKeyValue");
        Intrinsics.checkNotNullParameter(modelId, "modelId");
        Intrinsics.checkNotNullParameter(apiMode, "apiMode");
        synchronized (configLock) {
            ensureDir();
            Yaml yamlBuildYaml = buildYaml();
            if (this.configFile.exists()) {
                try {
                    Map mapEmptyMap = (Map) yamlBuildYaml.load(FilesKt.readText$default(this.configFile, (Charset) null, 1, (Object) null));
                    if (mapEmptyMap == null) {
                        mapEmptyMap = MapsKt.emptyMap();
                    }
                    linkedHashMap = MapsKt.toMutableMap(mapEmptyMap);
                } catch (Exception e) {
                    Log.w(TAG, "config.yaml parse failed, starting fresh: " + e.getMessage());
                    linkedHashMap = new LinkedHashMap();
                }
            } else {
                linkedHashMap = new LinkedHashMap();
            }
            Object obj = linkedHashMap.get("custom_providers");
            List listEmptyList = obj instanceof List ? (List) obj : null;
            if (listEmptyList == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : listEmptyList) {
                Object obj3 = ((Map) obj2).get(AppMeasurementSdk.ConditionalUserProperty.NAME);
                if (!Intrinsics.areEqual(obj3 instanceof String ? (String) obj3 : null, name)) {
                    arrayList.add(obj2);
                }
            }
            List mutableList = CollectionsKt.toMutableList(arrayList);
            LinkedHashMap linkedHashMapLinkedMapOf = MapsKt.linkedMapOf(new Pair[]{TuplesKt.to(AppMeasurementSdk.ConditionalUserProperty.NAME, name), TuplesKt.to("base_url", baseUrl), TuplesKt.to("api_key", apiKeyValue), TuplesKt.to("api_mode", apiMode)});
            if (!StringsKt.isBlank(modelId)) {
                linkedHashMapLinkedMapOf.put("models", CollectionsKt.listOf(modelId));
            }
            mutableList.add(linkedHashMapLinkedMapOf);
            linkedHashMap.put("custom_providers", mutableList);
            String strDump = yamlBuildYaml.dump(linkedHashMap);
            Intrinsics.checkNotNullExpressionValue(strDump, "dump(...)");
            writeConfigAtomic(strDump);
            Log.i(TAG, "Upserted custom provider: " + name + " → " + baseUrl);
        }
    }

    public final void writeModelConfig(String hermesProvider, String defaultModel, String baseUrl, String apiKey, String apiMode, Integer contextLength) {
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        LinkedHashMap linkedHashMap3;
        Intrinsics.checkNotNullParameter(hermesProvider, "hermesProvider");
        Intrinsics.checkNotNullParameter(defaultModel, "defaultModel");
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(apiMode, "apiMode");
        synchronized (configLock) {
            if (StringsKt.isBlank(hermesProvider)) {
                return;
            }
            ensureDir();
            Yaml yamlBuildYaml = buildYaml();
            if (this.configFile.exists()) {
                try {
                    Map mapEmptyMap = (Map) yamlBuildYaml.load(FilesKt.readText$default(this.configFile, (Charset) null, 1, (Object) null));
                    if (mapEmptyMap == null) {
                        mapEmptyMap = MapsKt.emptyMap();
                    }
                    linkedHashMap = MapsKt.toMutableMap(mapEmptyMap);
                } catch (Exception e) {
                    Log.w(TAG, "config.yaml parse failed, starting fresh: " + e.getMessage());
                    linkedHashMap = new LinkedHashMap();
                }
            } else {
                linkedHashMap = new LinkedHashMap();
            }
            Object obj = linkedHashMap.get("model");
            Map map = obj instanceof Map ? (Map) obj : null;
            if (map == null || (linkedHashMap2 = MapsKt.toMutableMap(map)) == null) {
                linkedHashMap2 = new LinkedHashMap();
            }
            linkedHashMap2.put("provider", hermesProvider);
            linkedHashMap2.put(MoaNormalize.DEFAULT_PRESET_NAME, defaultModel);
            if (!StringsKt.isBlank(baseUrl)) {
                linkedHashMap2.put("base_url", baseUrl);
                linkedHashMap2.put("api_key", apiKey);
                if (!StringsKt.isBlank(apiMode)) {
                    linkedHashMap2.put("api_mode", apiMode);
                }
            } else {
                linkedHashMap2.remove("base_url");
                linkedHashMap2.remove("api_key");
                linkedHashMap2.remove("api_mode");
            }
            if (Intrinsics.areEqual(hermesProvider, LOCAL_LLM_PROVIDER_ID) && contextLength != null && contextLength.intValue() >= HERMES_MINIMUM_CONTEXT_LENGTH) {
                linkedHashMap2.put("context_length", contextLength);
                Unit unit = Unit.INSTANCE;
            } else {
                linkedHashMap2.remove("context_length");
            }
            linkedHashMap.put("model", linkedHashMap2);
            Object obj2 = linkedHashMap.get("platform_toolsets");
            Map map2 = obj2 instanceof Map ? (Map) obj2 : null;
            if (map2 == null || (linkedHashMap3 = MapsKt.toMutableMap(map2)) == null) {
                linkedHashMap3 = new LinkedHashMap();
            }
            Object obj3 = linkedHashMap3.get("cli");
            if (!Intrinsics.areEqual(hermesProvider, LOCAL_LLM_PROVIDER_ID)) {
                List<String> managedCli = readManagedCli();
                if (managedCli != null && Intrinsics.areEqual(obj3, managedCli)) {
                    linkedHashMap3.remove("cli");
                }
                clearManagedCli();
            } else if (obj3 == null) {
                List<String> list = ON_DEVICE_TOOLSETS;
                linkedHashMap3.put("cli", list);
                writeManagedCli(list);
            }
            if (linkedHashMap3.isEmpty()) {
                linkedHashMap.remove("platform_toolsets");
            } else {
                linkedHashMap.put("platform_toolsets", linkedHashMap3);
            }
            String strDump = yamlBuildYaml.dump(linkedHashMap);
            Intrinsics.checkNotNullExpressionValue(strDump, "dump(...)");
            writeConfigAtomic(strDump);
            String str = baseUrl;
            if (StringsKt.isBlank(str)) {
                str = "(none)";
            }
            Log.i(TAG, "Wrote model config: provider=" + hermesProvider + ", model=" + defaultModel + ", base_url=" + ((Object) str));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f3 A[Catch: all -> 0x011f, TryCatch #1 {, blocks: (B:4:0x000a, B:6:0x0012, B:9:0x001c, B:10:0x0020, B:14:0x0032, B:15:0x0036, B:17:0x0040, B:20:0x0046, B:22:0x004e, B:24:0x0052, B:26:0x0056, B:30:0x0060, B:32:0x006a, B:35:0x0070, B:38:0x007d, B:40:0x0085, B:42:0x0097, B:44:0x00a1, B:47:0x00a7, B:50:0x00b4, B:52:0x00be, B:56:0x00c8, B:65:0x00f3, B:66:0x0117, B:58:0x00ce, B:60:0x00df, B:62:0x00e5, B:49:0x00ad, B:37:0x0076), top: B:78:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ensureLocalLlmDefaultsIfActive(String activeProviderId, int contextLength) {
        LinkedHashMap linkedHashMap;
        boolean z;
        LinkedHashMap linkedHashMap2;
        Intrinsics.checkNotNullParameter(activeProviderId, "activeProviderId");
        synchronized (configLock) {
            if (Intrinsics.areEqual(activeProviderId, LOCAL_LLM_PROVIDER_ID) && this.configFile.exists()) {
                Yaml yamlBuildYaml = buildYaml();
                try {
                    boolean z2 = true;
                    Map map = (Map) yamlBuildYaml.load(FilesKt.readText$default(this.configFile, (Charset) null, 1, (Object) null));
                    if (map == null) {
                        return;
                    }
                    Map mutableMap = MapsKt.toMutableMap(map);
                    Object obj = mutableMap.get("model");
                    Map map2 = obj instanceof Map ? (Map) obj : null;
                    Object obj2 = map2 != null ? map2.get("provider") : null;
                    if (Intrinsics.areEqual(obj2 instanceof String ? (String) obj2 : null, LOCAL_LLM_PROVIDER_ID)) {
                        Object obj3 = mutableMap.get("platform_toolsets");
                        Map map3 = obj3 instanceof Map ? (Map) obj3 : null;
                        if (map3 == null || (linkedHashMap = MapsKt.toMutableMap(map3)) == null) {
                            linkedHashMap = new LinkedHashMap();
                        }
                        if (linkedHashMap.get("cli") == null) {
                            List<String> list = ON_DEVICE_TOOLSETS;
                            linkedHashMap.put("cli", list);
                            writeManagedCli(list);
                            mutableMap.put("platform_toolsets", linkedHashMap);
                            z = true;
                        } else {
                            z = false;
                        }
                        Object obj4 = mutableMap.get("model");
                        Map map4 = obj4 instanceof Map ? (Map) obj4 : null;
                        if (map4 == null || (linkedHashMap2 = MapsKt.toMutableMap(map4)) == null) {
                            linkedHashMap2 = new LinkedHashMap();
                        }
                        Object obj5 = linkedHashMap2.get("context_length");
                        Integer num = obj5 instanceof Integer ? (Integer) obj5 : null;
                        if (contextLength >= HERMES_MINIMUM_CONTEXT_LENGTH) {
                            if (num == null || num.intValue() < HERMES_MINIMUM_CONTEXT_LENGTH) {
                                linkedHashMap2.put("context_length", Integer.valueOf(contextLength));
                                mutableMap.put("model", linkedHashMap2);
                            } else {
                                z2 = z;
                            }
                            if (z2) {
                                String strDump = yamlBuildYaml.dump(mutableMap);
                                Intrinsics.checkNotNullExpressionValue(strDump, "dump(...)");
                                writeConfigAtomic(strDump);
                                Log.i(TAG, "Backfilled local_llm defaults (toolsets/context_length=" + contextLength + ") for active local_llm");
                            }
                            Unit unit = Unit.INSTANCE;
                            return;
                        }
                        if (num != null && num.intValue() < HERMES_MINIMUM_CONTEXT_LENGTH) {
                            linkedHashMap2.remove("context_length");
                            mutableMap.put("model", linkedHashMap2);
                        }
                        if (z2) {
                        }
                        Unit unit2 = Unit.INSTANCE;
                        return;
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    public final String readActiveModelDefault(String expectedProvider) {
        Intrinsics.checkNotNullParameter(expectedProvider, "expectedProvider");
        if (!this.configFile.exists() || StringsKt.isBlank(expectedProvider)) {
            return BuildConfig.FLAVOR;
        }
        try {
            Map map = (Map) buildYaml().load(FilesKt.readText$default(this.configFile, (Charset) null, 1, (Object) null));
            if (map == null) {
                return BuildConfig.FLAVOR;
            }
            Object obj = map.get("model");
            Map map2 = obj instanceof Map ? (Map) obj : null;
            if (map2 == null) {
                return BuildConfig.FLAVOR;
            }
            Object obj2 = map2.get("provider");
            if (!Intrinsics.areEqual(obj2 instanceof String ? (String) obj2 : null, expectedProvider)) {
                return BuildConfig.FLAVOR;
            }
            Object obj3 = map2.get(MoaNormalize.DEFAULT_PRESET_NAME);
            String str = obj3 instanceof String ? (String) obj3 : null;
            return str == null ? BuildConfig.FLAVOR : str;
        } catch (Exception unused) {
            return BuildConfig.FLAVOR;
        }
    }

    /* JADX INFO: compiled from: HermesConfigRepository.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00072\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;", BuildConfig.FLAVOR, "baseUrl", BuildConfig.FLAVOR, "modelId", "apiMode", "hasApiKey", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getBaseUrl", "()Ljava/lang/String;", "getModelId", "getApiMode", "getHasApiKey", "()Z", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class CustomProviderConfig {
        public static final int $stable = 0;
        private final String apiMode;
        private final String baseUrl;
        private final boolean hasApiKey;
        private final String modelId;

        public static /* synthetic */ CustomProviderConfig copy$default(CustomProviderConfig customProviderConfig, String str, String str2, String str3, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = customProviderConfig.baseUrl;
            }
            if ((i & 2) != 0) {
                str2 = customProviderConfig.modelId;
            }
            if ((i & 4) != 0) {
                str3 = customProviderConfig.apiMode;
            }
            if ((i & 8) != 0) {
                z = customProviderConfig.hasApiKey;
            }
            return customProviderConfig.copy(str, str2, str3, z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getBaseUrl() {
            return this.baseUrl;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getModelId() {
            return this.modelId;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getApiMode() {
            return this.apiMode;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final boolean getHasApiKey() {
            return this.hasApiKey;
        }

        public final CustomProviderConfig copy(String baseUrl, String modelId, String apiMode, boolean hasApiKey) {
            Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
            Intrinsics.checkNotNullParameter(modelId, "modelId");
            Intrinsics.checkNotNullParameter(apiMode, "apiMode");
            return new CustomProviderConfig(baseUrl, modelId, apiMode, hasApiKey);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CustomProviderConfig)) {
                return false;
            }
            CustomProviderConfig customProviderConfig = (CustomProviderConfig) other;
            return Intrinsics.areEqual(this.baseUrl, customProviderConfig.baseUrl) && Intrinsics.areEqual(this.modelId, customProviderConfig.modelId) && Intrinsics.areEqual(this.apiMode, customProviderConfig.apiMode) && this.hasApiKey == customProviderConfig.hasApiKey;
        }

        public int hashCode() {
            return (((((this.baseUrl.hashCode() * 31) + this.modelId.hashCode()) * 31) + this.apiMode.hashCode()) * 31) + Boolean.hashCode(this.hasApiKey);
        }

        public String toString() {
            return "CustomProviderConfig(baseUrl=" + this.baseUrl + ", modelId=" + this.modelId + ", apiMode=" + this.apiMode + ", hasApiKey=" + this.hasApiKey + ")";
        }

        public CustomProviderConfig(String str, String str2, String str3, boolean z) {
            Intrinsics.checkNotNullParameter(str, "baseUrl");
            Intrinsics.checkNotNullParameter(str2, "modelId");
            Intrinsics.checkNotNullParameter(str3, "apiMode");
            this.baseUrl = str;
            this.modelId = str2;
            this.apiMode = str3;
            this.hasApiKey = z;
        }

        public final String getBaseUrl() {
            return this.baseUrl;
        }

        public final String getModelId() {
            return this.modelId;
        }

        public final String getApiMode() {
            return this.apiMode;
        }

        public final boolean getHasApiKey() {
            return this.hasApiKey;
        }
    }

    public final CustomProviderConfig readCustomProvider(String name) {
        Intrinsics.checkNotNullParameter(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
        if (!this.configFile.exists() || StringsKt.isBlank(name)) {
            return null;
        }
        try {
            boolean z = true;
            Map<String, ? extends Object> map = (Map) buildYaml().load(FilesKt.readText$default(this.configFile, (Charset) null, 1, (Object) null));
            if (map == null) {
                return null;
            }
            Object obj = map.get("model");
            Map map2 = obj instanceof Map ? (Map) obj : null;
            Object obj2 = map2 != null ? map2.get("provider") : null;
            boolean zAreEqual = Intrinsics.areEqual(obj2 instanceof String ? (String) obj2 : null, name);
            Map<String, String> mapNormalizedCustomEntry = normalizedCustomEntry(map, name);
            if (!zAreEqual && mapNormalizedCustomEntry == null) {
                return null;
            }
            String customProvider$topOrEntry = readCustomProvider$topOrEntry(zAreEqual, map2, mapNormalizedCustomEntry, "base_url");
            String customProvider$topOrEntry2 = readCustomProvider$topOrEntry(zAreEqual, map2, mapNormalizedCustomEntry, "api_mode");
            String str = BuildConfig.FLAVOR;
            if (zAreEqual) {
                Object obj3 = map2 != null ? map2.get(MoaNormalize.DEFAULT_PRESET_NAME) : null;
                String str2 = obj3 instanceof String ? (String) obj3 : null;
                if (str2 == null) {
                    str2 = BuildConfig.FLAVOR;
                }
                String str3 = str2;
                if (StringsKt.isBlank(str3)) {
                    String str4 = mapNormalizedCustomEntry != null ? mapNormalizedCustomEntry.get("model") : null;
                    if (str4 != null) {
                        str = str4;
                    }
                    str3 = str;
                }
                str = str3;
            } else {
                String str5 = mapNormalizedCustomEntry != null ? mapNormalizedCustomEntry.get("model") : null;
                if (str5 != null) {
                    str = str5;
                }
            }
            String customProvider$topOrEntry3 = readCustomProvider$topOrEntry(zAreEqual, map2, mapNormalizedCustomEntry, "api_key");
            if (StringsKt.isBlank(customProvider$topOrEntry3) || Intrinsics.areEqual(customProvider$topOrEntry3, "no-key-required")) {
                z = false;
            }
            return new CustomProviderConfig(customProvider$topOrEntry, str, customProvider$topOrEntry2, z);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final String readCustomProvider$topOrEntry(boolean z, Map<String, ? extends Object> map, Map<String, String> map2, String str) {
        String str2;
        String str3 = BuildConfig.FLAVOR;
        if (z) {
            Object obj = map != null ? map.get(str) : null;
            str2 = obj instanceof String ? (String) obj : null;
            if (str2 == null) {
            }
        } else {
            str2 = BuildConfig.FLAVOR;
        }
        String str4 = str2;
        if (StringsKt.isBlank(str4)) {
            String str5 = map2 != null ? map2.get(str) : null;
            if (str5 != null) {
                str3 = str5;
            }
            str4 = str3;
        }
        return (String) str4;
    }

    private final Map<String, String> normalizedCustomEntry(Map<String, ? extends Object> root, String name) {
        Object next;
        Object next2;
        Object obj = root.get("custom_providers");
        List list = obj instanceof List ? (List) obj : null;
        String str = BuildConfig.FLAVOR;
        if (list != null) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it.next();
                Object obj2 = ((Map) next2).get(AppMeasurementSdk.ConditionalUserProperty.NAME);
                if (Intrinsics.areEqual(obj2 instanceof String ? (String) obj2 : null, name)) {
                    break;
                }
            }
            Map<?, ?> map = (Map) next2;
            if (map != null) {
                Pair[] pairArr = new Pair[4];
                Object obj3 = map.get("base_url");
                String str2 = obj3 instanceof String ? (String) obj3 : null;
                if (str2 == null) {
                    str2 = BuildConfig.FLAVOR;
                }
                pairArr[0] = TuplesKt.to("base_url", str2);
                Object obj4 = map.get("api_key");
                String str3 = obj4 instanceof String ? (String) obj4 : null;
                if (str3 == null) {
                    str3 = BuildConfig.FLAVOR;
                }
                pairArr[1] = TuplesKt.to("api_key", str3);
                Object obj5 = map.get("api_mode");
                String str4 = obj5 instanceof String ? (String) obj5 : null;
                if (str4 != null) {
                    str = str4;
                }
                pairArr[2] = TuplesKt.to("api_mode", str);
                pairArr[3] = TuplesKt.to("model", firstModelId(map));
                return MapsKt.mapOf(pairArr);
            }
        }
        Object obj6 = root.get("providers");
        Map map2 = obj6 instanceof Map ? (Map) obj6 : null;
        if (map2 == null) {
            return null;
        }
        Object obj7 = map2.get(name);
        Map<?, ?> map3 = obj7 instanceof Map ? (Map) obj7 : null;
        if (map3 == null) {
            Iterator it2 = map2.values().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                Map map4 = next instanceof Map ? (Map) next : null;
                if (Intrinsics.areEqual(map4 != null ? map4.get(AppMeasurementSdk.ConditionalUserProperty.NAME) : null, name)) {
                    break;
                }
            }
            map3 = next instanceof Map ? (Map) next : null;
            if (map3 == null) {
                return null;
            }
        }
        Pair[] pairArr2 = new Pair[4];
        Object obj8 = map3.get("api");
        String str5 = obj8 instanceof String ? (String) obj8 : null;
        if (str5 == null) {
            str5 = BuildConfig.FLAVOR;
        }
        pairArr2[0] = TuplesKt.to("base_url", str5);
        Object obj9 = map3.get("api_key");
        String str6 = obj9 instanceof String ? (String) obj9 : null;
        if (str6 == null) {
            str6 = BuildConfig.FLAVOR;
        }
        pairArr2[1] = TuplesKt.to("api_key", str6);
        Object obj10 = map3.get("transport");
        String str7 = obj10 instanceof String ? (String) obj10 : null;
        if (str7 != null) {
            str = str7;
        }
        pairArr2[2] = TuplesKt.to("api_mode", str);
        pairArr2[3] = TuplesKt.to("model", firstModelId(map3));
        return MapsKt.mapOf(pairArr2);
    }

    private final String firstModelId(Map<?, ?> entry) {
        Object objFirstOrNull;
        String string;
        String str;
        String string2;
        if (entry == null) {
            return BuildConfig.FLAVOR;
        }
        Object obj = entry.get("default_model");
        String str2 = obj instanceof String ? (String) obj : null;
        if (str2 != null) {
            if (StringsKt.isBlank(str2)) {
                str2 = null;
            }
            if (str2 != null) {
                return str2;
            }
        }
        Object obj2 = entry.get("model");
        String str3 = obj2 instanceof String ? (String) obj2 : null;
        if (str3 != null) {
            if (StringsKt.isBlank(str3)) {
                str3 = null;
            }
            if (str3 != null) {
                return str3;
            }
        }
        Object obj3 = entry.get("models");
        if (obj3 instanceof List) {
            Object objFirstOrNull2 = CollectionsKt.firstOrNull((List) obj3);
            if (objFirstOrNull2 != null && (string2 = objFirstOrNull2.toString()) != null) {
                str = StringsKt.isBlank(string2) ? null : string2;
                if (str != null) {
                    return str;
                }
            }
        } else if ((obj3 instanceof Map) && (objFirstOrNull = CollectionsKt.firstOrNull(((Map) obj3).keySet())) != null && (string = objFirstOrNull.toString()) != null) {
            str = StringsKt.isBlank(string) ? null : string;
            if (str != null) {
                return str;
            }
        }
        return BuildConfig.FLAVOR;
    }

    public final boolean hasApiKey(String envVar) {
        Intrinsics.checkNotNullParameter(envVar, "envVar");
        if (StringsKt.isBlank(envVar) || !this.envFile.exists()) {
            return false;
        }
        try {
            List<String> lines$default = FilesKt.readLines$default(this.envFile, (Charset) null, 1, (Object) null);
            if ((lines$default instanceof Collection) && lines$default.isEmpty()) {
                return false;
            }
            for (String str : lines$default) {
                int iIndexOf$default = StringsKt.indexOf$default(str, '=', 0, false, 6, (Object) null);
                if (iIndexOf$default > 0) {
                    String strSubstring = str.substring(0, iIndexOf$default);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                    if (Intrinsics.areEqual(strSubstring, envVar)) {
                        String strSubstring2 = str.substring(iIndexOf$default + 1);
                        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                        if (!StringsKt.isBlank(strSubstring2)) {
                            return true;
                        }
                    } else {
                        continue;
                    }
                }
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean hasAnyProviderConfigured() {
        if (this.envFile.exists()) {
            List<String> lines$default = FilesKt.readLines$default(this.envFile, (Charset) null, 1, (Object) null);
            if (!(lines$default instanceof Collection) || !lines$default.isEmpty()) {
                for (String str : lines$default) {
                    int iIndexOf$default = StringsKt.indexOf$default(str, '=', 0, false, 6, (Object) null);
                    if (iIndexOf$default > 0) {
                        String strSubstring = str.substring(0, iIndexOf$default);
                        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                        String strSubstring2 = str.substring(iIndexOf$default + 1);
                        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                        if (StringsKt.endsWith$default(strSubstring, "_API_KEY", false, 2, (Object) null) || StringsKt.endsWith$default(strSubstring, "_TOKEN", false, 2, (Object) null)) {
                            if (!StringsKt.isBlank(strSubstring2) && !StringsKt.startsWith$default(strSubstring2, "#", false, 2, (Object) null)) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        if (this.configFile.exists()) {
            try {
                Map map = (Map) buildYaml().load(FilesKt.readText$default(this.configFile, (Charset) null, 1, (Object) null));
                Object obj = map != null ? map.get("custom_providers") : null;
                List list = obj instanceof List ? (List) obj : null;
                if (list != null && !list.isEmpty()) {
                    return true;
                }
                Object obj2 = map != null ? map.get("providers") : null;
                Map map2 = obj2 instanceof Map ? (Map) obj2 : null;
                if (map2 != null) {
                    if (!map2.isEmpty()) {
                        return true;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return !AuthJsonStore.INSTANCE.configuredProviders(this.hermesDir).isEmpty();
    }

    /* JADX INFO: compiled from: HermesConfigRepository.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/hermes/android/data/HermesConfigRepository$MoaDeleteResult;", BuildConfig.FLAVOR, "Deleted", "RefusedLastPreset", "NotFound", "Lcom/hermes/android/data/HermesConfigRepository$MoaDeleteResult$Deleted;", "Lcom/hermes/android/data/HermesConfigRepository$MoaDeleteResult$NotFound;", "Lcom/hermes/android/data/HermesConfigRepository$MoaDeleteResult$RefusedLastPreset;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public interface MoaDeleteResult {

        /* JADX INFO: compiled from: HermesConfigRepository.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/HermesConfigRepository$MoaDeleteResult$Deleted;", "Lcom/hermes/android/data/HermesConfigRepository$MoaDeleteResult;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Deleted implements MoaDeleteResult {
            public static final int $stable = 0;
            public static final Deleted INSTANCE = new Deleted();

            private Deleted() {
            }
        }

        /* JADX INFO: compiled from: HermesConfigRepository.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/HermesConfigRepository$MoaDeleteResult$RefusedLastPreset;", "Lcom/hermes/android/data/HermesConfigRepository$MoaDeleteResult;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class RefusedLastPreset implements MoaDeleteResult {
            public static final int $stable = 0;
            public static final RefusedLastPreset INSTANCE = new RefusedLastPreset();

            private RefusedLastPreset() {
            }
        }

        /* JADX INFO: compiled from: HermesConfigRepository.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/HermesConfigRepository$MoaDeleteResult$NotFound;", "Lcom/hermes/android/data/HermesConfigRepository$MoaDeleteResult;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class NotFound implements MoaDeleteResult {
            public static final int $stable = 0;
            public static final NotFound INSTANCE = new NotFound();

            private NotFound() {
            }
        }
    }

    public final MoaSection readMoaSection() {
        Object obj;
        Map map;
        MoaNormalize moaNormalize = MoaNormalize.INSTANCE;
        try {
            Result.Companion companion = Result.Companion;
            HermesConfigRepository hermesConfigRepository = this;
            obj = Result.constructor-impl((!this.configFile.exists() || (map = (Map) buildYaml().load(FilesKt.readText$default(this.configFile, (Charset) null, 1, (Object) null))) == null) ? null : map.get("moa"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        return moaNormalize.normalizeSection(Result.isFailure-impl(obj) ? null : obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0083 A[Catch: Exception -> 0x0098, TryCatch #0 {Exception -> 0x0098, blocks: (B:10:0x002b, B:13:0x0040, B:15:0x004a, B:18:0x0050, B:20:0x0058, B:22:0x005c, B:24:0x0060, B:28:0x006a, B:30:0x0070, B:32:0x0074, B:36:0x007b, B:38:0x0083, B:40:0x0089, B:44:0x0095), top: B:53:0x002b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String effectiveCustomKey(String name, String userInput) {
        String str;
        String str2;
        String str3 = BuildConfig.FLAVOR;
        Intrinsics.checkNotNullParameter(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
        Intrinsics.checkNotNullParameter(userInput, "userInput");
        if (!StringsKt.isBlank(userInput)) {
            return userInput;
        }
        if (!this.configFile.exists() || StringsKt.isBlank(name)) {
            return "no-key-required";
        }
        try {
            Map<String, ? extends Object> map = (Map) buildYaml().load(FilesKt.readText$default(this.configFile, (Charset) null, 1, (Object) null));
            if (map == null) {
                return "no-key-required";
            }
            Object obj = map.get("model");
            Map map2 = obj instanceof Map ? (Map) obj : null;
            Object obj2 = map2 != null ? map2.get("provider") : null;
            if (Intrinsics.areEqual(obj2 instanceof String ? (String) obj2 : null, name)) {
                Object obj3 = map2 != null ? map2.get("api_key") : null;
                str = obj3 instanceof String ? (String) obj3 : null;
                if (str == null) {
                }
                str2 = str;
                if (StringsKt.isBlank(str2)) {
                }
                str3 = (String) str2;
            } else {
                str = BuildConfig.FLAVOR;
                str2 = str;
                if (StringsKt.isBlank(str2)) {
                    Map<String, String> mapNormalizedCustomEntry = normalizedCustomEntry(map, name);
                    String str4 = mapNormalizedCustomEntry != null ? mapNormalizedCustomEntry.get("api_key") : null;
                    str2 = str4 == null ? BuildConfig.FLAVOR : str4;
                }
                str3 = (String) str2;
            }
        } catch (Exception unused) {
        }
        String str5 = str3;
        return StringsKt.isBlank(str5) ? "no-key-required" : str5;
    }

    public final String readActiveProviderId() {
        Object obj;
        Object obj2 = BuildConfig.FLAVOR;
        try {
            Result.Companion companion = Result.Companion;
            HermesConfigRepository hermesConfigRepository = this;
            if (!this.configFile.exists()) {
                return BuildConfig.FLAVOR;
            }
            Map map = (Map) buildYaml().load(FilesKt.readText$default(this.configFile, (Charset) null, 1, (Object) null));
            if (map == null) {
                return BuildConfig.FLAVOR;
            }
            Object obj3 = map.get("model");
            Map map2 = obj3 instanceof Map ? (Map) obj3 : null;
            if (map2 == null) {
                return BuildConfig.FLAVOR;
            }
            Object obj4 = map2.get("provider");
            String string = obj4 != null ? obj4.toString() : null;
            if (string == null) {
                string = BuildConfig.FLAVOR;
            }
            obj = Result.constructor-impl(string);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        if (!Result.isFailure-impl(obj)) {
            obj2 = obj;
        }
        return (String) obj2;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String readActiveMoaPresetName() {
        Object obj;
        String string;
        Object obj2 = BuildConfig.FLAVOR;
        try {
            Result.Companion companion = Result.Companion;
            HermesConfigRepository hermesConfigRepository = this;
            if (!this.configFile.exists()) {
                return BuildConfig.FLAVOR;
            }
            Map map = (Map) buildYaml().load(FilesKt.readText$default(this.configFile, (Charset) null, 1, (Object) null));
            if (map == null) {
                return BuildConfig.FLAVOR;
            }
            Object obj3 = map.get("model");
            Map map2 = obj3 instanceof Map ? (Map) obj3 : null;
            if (map2 == null) {
                return BuildConfig.FLAVOR;
            }
            Object obj4 = map2.get("provider");
            if (!Intrinsics.areEqual(obj4 != null ? obj4.toString() : null, "moa")) {
                string = BuildConfig.FLAVOR;
                obj = Result.constructor-impl(string);
            } else {
                Object obj5 = map2.get(MoaNormalize.DEFAULT_PRESET_NAME);
                string = obj5 != null ? obj5.toString() : null;
                if (string == null) {
                }
                obj = Result.constructor-impl(string);
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        if (!Result.isFailure-impl(obj)) {
            obj2 = obj;
        }
        return (String) obj2;
    }

    public final List<Pair<String, String>> readCustomProviderNames() {
        Object obj;
        Map map;
        ArrayList arrayListEmptyList;
        String string;
        Pair pair;
        String string2;
        Pair pair2;
        try {
            Result.Companion companion = Result.Companion;
            HermesConfigRepository hermesConfigRepository = this;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        if (this.configFile.exists() && (map = (Map) buildYaml().load(FilesKt.readText$default(this.configFile, (Charset) null, 1, (Object) null))) != null) {
            Object obj2 = map.get("custom_providers");
            List list = obj2 instanceof List ? (List) obj2 : null;
            if (list == null) {
                arrayListEmptyList = CollectionsKt.emptyList();
            } else {
                ArrayList arrayList = new ArrayList();
                for (Object obj3 : list) {
                    Map<?, ?> map2 = obj3 instanceof Map ? (Map) obj3 : null;
                    if (map2 != null) {
                        Object obj4 = map2.get(AppMeasurementSdk.ConditionalUserProperty.NAME);
                        String string3 = (obj4 == null || (string2 = obj4.toString()) == null) ? null : StringsKt.trim(string2).toString();
                        if (string3 == null) {
                            string3 = BuildConfig.FLAVOR;
                        }
                        pair2 = string3.length() == 0 ? null : TuplesKt.to(string3, firstModelId(map2));
                    }
                    if (pair2 != null) {
                        arrayList.add(pair2);
                    }
                }
                arrayListEmptyList = arrayList;
            }
            if (arrayListEmptyList.isEmpty()) {
                Object obj5 = map.get("providers");
                Map map3 = obj5 instanceof Map ? (Map) obj5 : null;
                if (map3 == null) {
                    arrayListEmptyList = CollectionsKt.emptyList();
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    for (Map.Entry entry : map3.entrySet()) {
                        String str = (String) entry.getKey();
                        Object value = entry.getValue();
                        Map<?, ?> map4 = value instanceof Map ? (Map) value : null;
                        if (map4 != null) {
                            Object obj6 = map4.get(AppMeasurementSdk.ConditionalUserProperty.NAME);
                            String string4 = (obj6 == null || (string = obj6.toString()) == null) ? null : StringsKt.trim(string).toString();
                            if (string4 == null) {
                                string4 = BuildConfig.FLAVOR;
                            }
                            String str2 = string4;
                            if (!StringsKt.isBlank(str2)) {
                                str = str2;
                            }
                            String str3 = str;
                            pair = str3.length() == 0 ? null : TuplesKt.to(str3, firstModelId(map4));
                        }
                        if (pair != null) {
                            arrayList2.add(pair);
                        }
                    }
                    arrayListEmptyList = arrayList2;
                }
            }
            obj = Result.constructor-impl(arrayListEmptyList);
            List listEmptyList = CollectionsKt.emptyList();
            if (Result.isFailure-impl(obj)) {
                obj = listEmptyList;
            }
            return (List) obj;
        }
        return CollectionsKt.emptyList();
    }

    public static /* synthetic */ void upsertMoaPreset$default(HermesConfigRepository hermesConfigRepository, MoaPreset moaPreset, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        hermesConfigRepository.upsertMoaPreset(moaPreset, z);
    }

    public final void upsertMoaPreset(MoaPreset preset, boolean setAsDefault) {
        String string;
        Intrinsics.checkNotNullParameter(preset, "preset");
        synchronized (configLock) {
            ensureDir();
            Yaml yamlBuildYaml = buildYaml();
            Map<String, Object> mapLoadRootOrThrowForMoa = loadRootOrThrowForMoa(yamlBuildYaml);
            Object obj = mapLoadRootOrThrowForMoa.get("moa");
            String string2 = null;
            LinkedHashMap<String, Object> linkedHashMapStringKeyed = stringKeyed(obj instanceof Map ? (Map) obj : null);
            Object obj2 = linkedHashMapStringKeyed.get("presets");
            LinkedHashMap<String, Object> linkedHashMapStringKeyed2 = stringKeyed(obj2 instanceof Map ? (Map) obj2 : null);
            linkedHashMapStringKeyed2.put(preset.getName(), MoaNormalize.INSTANCE.presetBody(preset));
            linkedHashMapStringKeyed.put("presets", linkedHashMapStringKeyed2);
            Object obj3 = linkedHashMapStringKeyed.get("default_preset");
            if (obj3 != null && (string = obj3.toString()) != null) {
                string2 = StringsKt.trim(string).toString();
            }
            if (string2 == null) {
                string2 = BuildConfig.FLAVOR;
            }
            if (setAsDefault || string2.length() == 0 || !linkedHashMapStringKeyed2.containsKey(string2)) {
                linkedHashMapStringKeyed.put("default_preset", preset.getName());
            }
            refreshFlattenedView(linkedHashMapStringKeyed, linkedHashMapStringKeyed2);
            mapLoadRootOrThrowForMoa.put("moa", linkedHashMapStringKeyed);
            String strDump = yamlBuildYaml.dump(mapLoadRootOrThrowForMoa);
            Intrinsics.checkNotNullExpressionValue(strDump, "dump(...)");
            writeConfigAtomic(strDump);
            Log.i(TAG, "Upserted MoA preset: " + preset.getName() + " (default=" + linkedHashMapStringKeyed.get("default_preset") + ")");
        }
    }

    public final MoaDeleteResult deleteMoaPreset(String name) {
        Object obj;
        String string;
        String string2;
        Intrinsics.checkNotNullParameter(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
        synchronized (configLock) {
            if (!this.configFile.exists()) {
                return MoaDeleteResult.NotFound.INSTANCE;
            }
            Yaml yamlBuildYaml = buildYaml();
            Map<String, Object> mapLoadRootOrThrowForMoa = loadRootOrThrowForMoa(yamlBuildYaml);
            Object obj2 = mapLoadRootOrThrowForMoa.get("moa");
            LinkedHashMap<String, Object> linkedHashMapStringKeyed = stringKeyed(obj2 instanceof Map ? (Map) obj2 : null);
            Object obj3 = linkedHashMapStringKeyed.get("presets");
            LinkedHashMap<String, Object> linkedHashMapStringKeyed2 = stringKeyed(obj3 instanceof Map ? (Map) obj3 : null);
            if (!linkedHashMapStringKeyed2.containsKey(name)) {
                return MoaDeleteResult.NotFound.INSTANCE;
            }
            if (linkedHashMapStringKeyed2.size() <= 1) {
                return MoaDeleteResult.RefusedLastPreset.INSTANCE;
            }
            linkedHashMapStringKeyed2.remove(name);
            linkedHashMapStringKeyed.put("presets", linkedHashMapStringKeyed2);
            Object obj4 = linkedHashMapStringKeyed.get("default_preset");
            String string3 = (obj4 == null || (string2 = obj4.toString()) == null) ? null : StringsKt.trim(string2).toString();
            if (string3 == null) {
                string3 = BuildConfig.FLAVOR;
            }
            if (Intrinsics.areEqual(string3, name) || !linkedHashMapStringKeyed2.containsKey(string3)) {
                Set<String> setKeySet = linkedHashMapStringKeyed2.keySet();
                Intrinsics.checkNotNullExpressionValue(setKeySet, "<get-keys>(...)");
                string3 = (String) CollectionsKt.first(setKeySet);
            }
            Intrinsics.checkNotNull(string3);
            linkedHashMapStringKeyed.put("default_preset", string3);
            Object obj5 = linkedHashMapStringKeyed.get("active_preset");
            if (Intrinsics.areEqual((obj5 == null || (string = obj5.toString()) == null) ? null : StringsKt.trim(string).toString(), name)) {
                linkedHashMapStringKeyed.put("active_preset", BuildConfig.FLAVOR);
            }
            refreshFlattenedView(linkedHashMapStringKeyed, linkedHashMapStringKeyed2);
            mapLoadRootOrThrowForMoa.put("moa", linkedHashMapStringKeyed);
            Object obj6 = mapLoadRootOrThrowForMoa.get("model");
            Map<?, ?> map = obj6 instanceof Map ? (Map) obj6 : null;
            if (Intrinsics.areEqual((map == null || (obj = map.get("provider")) == null) ? null : obj.toString(), "moa")) {
                Object obj7 = map.get(MoaNormalize.DEFAULT_PRESET_NAME);
                if (Intrinsics.areEqual(obj7 != null ? obj7.toString() : null, name)) {
                    LinkedHashMap<String, Object> linkedHashMapStringKeyed3 = stringKeyed(map);
                    linkedHashMapStringKeyed3.put(MoaNormalize.DEFAULT_PRESET_NAME, string3);
                    mapLoadRootOrThrowForMoa.put("model", linkedHashMapStringKeyed3);
                }
            }
            String strDump = yamlBuildYaml.dump(mapLoadRootOrThrowForMoa);
            Intrinsics.checkNotNullExpressionValue(strDump, "dump(...)");
            writeConfigAtomic(strDump);
            Log.i(TAG, "Deleted MoA preset: " + name + " (default→" + string3 + ")");
            return MoaDeleteResult.Deleted.INSTANCE;
        }
    }

    private final void refreshFlattenedView(LinkedHashMap<String, Object> moa, Map<String, ? extends Object> presets) {
        String string;
        Object obj = moa.get("default_preset");
        String string2 = (obj == null || (string = obj.toString()) == null) ? null : StringsKt.trim(string).toString();
        if (string2 == null) {
            string2 = BuildConfig.FLAVOR;
        }
        Object obj2 = presets.get(string2);
        Map map = obj2 instanceof Map ? (Map) obj2 : null;
        if (map == null) {
            return;
        }
        Iterator<String> it = this.flatViewKeys.iterator();
        while (it.hasNext()) {
            moa.remove(it.next());
        }
        for (String str : this.flatViewKeys) {
            Object obj3 = map.get(str);
            if (obj3 != null) {
                moa.put(str, deepCopyYaml(obj3));
            }
        }
    }

    private final Object deepCopyYaml(Object v) {
        if (!(v instanceof Map)) {
            if (!(v instanceof List)) {
                return v;
            }
            Iterable iterable = (Iterable) v;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(deepCopyYaml(it.next()));
            }
            return arrayList;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : ((Map) v).entrySet()) {
            linkedHashMap.put(entry.getKey(), deepCopyYaml(entry.getValue()));
        }
        return linkedHashMap;
    }

    private final Map<String, Object> loadRootOrThrowForMoa(Yaml yaml) {
        if (!this.configFile.exists()) {
            return new LinkedHashMap();
        }
        try {
            Map mapEmptyMap = (Map) yaml.load(FilesKt.readText$default(this.configFile, (Charset) null, 1, (Object) null));
            if (mapEmptyMap == null) {
                mapEmptyMap = MapsKt.emptyMap();
            }
            return MapsKt.toMutableMap(mapEmptyMap);
        } catch (Exception e) {
            throw new IllegalStateException("config.yaml unreadable — refusing to rewrite it: " + e.getMessage(), e);
        }
    }

    private final LinkedHashMap<String, Object> stringKeyed(Map<?, ?> m) {
        String string;
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<>();
        if (m != null) {
            for (Map.Entry<?, ?> entry : m.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                LinkedHashMap<String, Object> linkedHashMap2 = linkedHashMap;
                if (key != null && (string = key.toString()) != null) {
                    linkedHashMap2.put(string, value);
                }
            }
        }
        return linkedHashMap;
    }

    private final void ensureDir() {
        if (this.hermesDir.exists()) {
            return;
        }
        this.hermesDir.mkdirs();
    }

    private final Yaml buildYaml() {
        DumperOptions dumperOptions = new DumperOptions();
        dumperOptions.setDefaultFlowStyle(DumperOptions.FlowStyle.BLOCK);
        dumperOptions.setPrettyFlow(true);
        dumperOptions.setIndent(2);
        return new Yaml(dumperOptions);
    }
}
