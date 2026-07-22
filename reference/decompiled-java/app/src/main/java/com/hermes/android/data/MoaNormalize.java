package com.hermes.android.data;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: MoaPreset.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0005J\u0012\u0010\u0016\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0002J\u0012\u0010\u0018\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0002J\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0002\u0010\u001bJ\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0002\u0010\u001eJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\b2\b\u0010 \u001a\u0004\u0018\u00010\u0001J\u0018\u0010!\u001a\u00020\"2\u0006\u0010\u0015\u001a\u00020\u00052\b\u0010 \u001a\u0004\u0018\u00010\u0001J\u0010\u0010#\u001a\u00020$2\b\u0010 \u001a\u0004\u0018\u00010\u0001J.\u0010%\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010&j\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001`'2\u0006\u0010(\u001a\u00020\"R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/hermes/android/data/MoaNormalize;", BuildConfig.FLAVOR, "<init>", "()V", "DEFAULT_PRESET_NAME", BuildConfig.FLAVOR, "BUILT_IN_REFERENCES", BuildConfig.FLAVOR, "Lcom/hermes/android/data/MoaSlot;", "getBUILT_IN_REFERENCES", "()Ljava/util/List;", "BUILT_IN_AGGREGATOR", "getBUILT_IN_AGGREGATOR", "()Lcom/hermes/android/data/MoaSlot;", "KNOWN_PRESET_KEYS", BuildConfig.FLAVOR, "NAME_PATTERN", "Lkotlin/text/Regex;", "YAML_RESERVED", "isValidPresetName", BuildConfig.FLAVOR, AppMeasurementSdk.ConditionalUserProperty.NAME, "pythonishString", "v", "pythonishBool", "coerceFloatOrNull", BuildConfig.FLAVOR, "(Ljava/lang/Object;)Ljava/lang/Double;", "coerceIntOrNull", BuildConfig.FLAVOR, "(Ljava/lang/Object;)Ljava/lang/Integer;", "cleanSlot", "raw", "normalizePreset", "Lcom/hermes/android/data/MoaPreset;", "normalizeSection", "Lcom/hermes/android/data/MoaSection;", "presetBody", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "p", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class MoaNormalize {
    public static final String DEFAULT_PRESET_NAME = "default";
    public static final MoaNormalize INSTANCE = new MoaNormalize();
    private static final List<MoaSlot> BUILT_IN_REFERENCES = CollectionsKt.listOf(new MoaSlot[]{new MoaSlot("openai-codex", "gpt-5.5"), new MoaSlot("openrouter", "deepseek/deepseek-v4-pro")});
    private static final MoaSlot BUILT_IN_AGGREGATOR = new MoaSlot("openrouter", "anthropic/claude-opus-4.8");
    private static final Set<String> KNOWN_PRESET_KEYS = SetsKt.setOf(new String[]{"reference_models", "aggregator", "reference_temperature", "aggregator_temperature", "max_tokens", "enabled"});
    private static final Regex NAME_PATTERN = new Regex("^[A-Za-z0-9][A-Za-z0-9._-]{0,31}$");
    private static final Set<String> YAML_RESERVED = SetsKt.setOf(new String[]{"true", "false", "yes", "no", "on", "off", "null", "~"});
    public static final int $stable = 8;

    private MoaNormalize() {
    }

    public final List<MoaSlot> getBUILT_IN_REFERENCES() {
        return BUILT_IN_REFERENCES;
    }

    public final MoaSlot getBUILT_IN_AGGREGATOR() {
        return BUILT_IN_AGGREGATOR;
    }

    public final boolean isValidPresetName(String name) {
        Intrinsics.checkNotNullParameter(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
        if (NAME_PATTERN.matches(name)) {
            Set<String> set = YAML_RESERVED;
            String lowerCase = name.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (!set.contains(lowerCase)) {
                return true;
            }
        }
        return false;
    }

    private final String pythonishString(Object v) {
        String string = BuildConfig.FLAVOR;
        if (v != null && !Intrinsics.areEqual(v, false) && (!(v instanceof Number) || ((Number) v).doubleValue() != 0.0d)) {
            string = v.toString();
        }
        return StringsKt.trim(string).toString();
    }

    private final boolean pythonishBool(Object v) {
        if (v == null) {
            return true;
        }
        if (v instanceof Boolean) {
            return ((Boolean) v).booleanValue();
        }
        if (v instanceof Number) {
            if (((Number) v).doubleValue() != 0.0d) {
                return true;
            }
        } else if (v instanceof String) {
            if (((CharSequence) v).length() > 0) {
                return true;
            }
        } else if (v instanceof Map) {
            if (!((Map) v).isEmpty()) {
                return true;
            }
        } else if (!(v instanceof List) || !((Collection) v).isEmpty()) {
            return true;
        }
        return false;
    }

    private final Double coerceFloatOrNull(Object v) {
        if (v == null || Intrinsics.areEqual(v, BuildConfig.FLAVOR)) {
            return null;
        }
        return v instanceof Number ? Double.valueOf(((Number) v).doubleValue()) : StringsKt.toDoubleOrNull(v.toString());
    }

    private final Integer coerceIntOrNull(Object v) {
        if (v == null || Intrinsics.areEqual(v, BuildConfig.FLAVOR)) {
            return null;
        }
        if (v instanceof Number) {
            return Integer.valueOf(((Number) v).intValue());
        }
        Integer intOrNull = StringsKt.toIntOrNull(v.toString());
        if (intOrNull != null) {
            return intOrNull;
        }
        Double doubleOrNull = StringsKt.toDoubleOrNull(v.toString());
        if (doubleOrNull != null) {
            return Integer.valueOf((int) doubleOrNull.doubleValue());
        }
        return null;
    }

    public final MoaSlot cleanSlot(Object raw) {
        Map map = raw instanceof Map ? (Map) raw : null;
        if (map == null) {
            return null;
        }
        String strPythonishString = pythonishString(map.get("provider"));
        String strPythonishString2 = pythonishString(map.get("model"));
        if (strPythonishString.length() == 0 || strPythonishString2.length() == 0) {
            return null;
        }
        String lowerCase = strPythonishString.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (Intrinsics.areEqual(lowerCase, "moa")) {
            return null;
        }
        return new MoaSlot(strPythonishString, strPythonishString2);
    }

    public final MoaPreset normalizePreset(String name, Object raw) {
        List listListOf;
        String string;
        Intrinsics.checkNotNullParameter(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
        Map mapEmptyMap = raw instanceof Map ? (Map) raw : null;
        if (mapEmptyMap == null) {
            mapEmptyMap = MapsKt.emptyMap();
        }
        Object obj = mapEmptyMap.get("reference_models");
        if (obj instanceof List) {
            listListOf = (List) obj;
        } else {
            listListOf = obj instanceof Map ? CollectionsKt.listOf(obj) : CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = listListOf.iterator();
        while (it.hasNext()) {
            MoaSlot moaSlotCleanSlot = INSTANCE.cleanSlot(it.next());
            if (moaSlotCleanSlot != null) {
                arrayList.add(moaSlotCleanSlot);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList2.isEmpty()) {
            arrayList2 = BUILT_IN_REFERENCES;
        }
        List list = arrayList2;
        MoaSlot moaSlotCleanSlot2 = cleanSlot(mapEmptyMap.get("aggregator"));
        if (moaSlotCleanSlot2 == null) {
            moaSlotCleanSlot2 = BUILT_IN_AGGREGATOR;
        }
        MoaSlot moaSlot = moaSlotCleanSlot2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : mapEmptyMap.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (key != null && (string = key.toString()) != null && !KNOWN_PRESET_KEYS.contains(string)) {
                linkedHashMap.put(string, value);
            }
        }
        return new MoaPreset(name, list, moaSlot, coerceFloatOrNull(mapEmptyMap.get("reference_temperature")), coerceFloatOrNull(mapEmptyMap.get("aggregator_temperature")), coerceIntOrNull(mapEmptyMap.get("max_tokens")), pythonishBool(mapEmptyMap.get("enabled")), linkedHashMap);
    }

    public final MoaSection normalizeSection(Object raw) {
        Map mapEmptyMap = raw instanceof Map ? (Map) raw : null;
        if (mapEmptyMap == null) {
            mapEmptyMap = MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Object obj = mapEmptyMap.get("presets");
        Map map = obj instanceof Map ? (Map) obj : null;
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                MoaNormalize moaNormalize = INSTANCE;
                String strPythonishString = moaNormalize.pythonishString(key);
                if (strPythonishString.length() > 0) {
                    linkedHashMap.put(strPythonishString, moaNormalize.normalizePreset(strPythonishString, value));
                }
            }
        }
        if (linkedHashMap.isEmpty()) {
            linkedHashMap.put(DEFAULT_PRESET_NAME, normalizePreset(DEFAULT_PRESET_NAME, mapEmptyMap));
        }
        String strPythonishString2 = pythonishString(mapEmptyMap.get("default_preset"));
        if (strPythonishString2.length() == 0 || !linkedHashMap.containsKey(strPythonishString2)) {
            Set setKeySet = linkedHashMap.keySet();
            Intrinsics.checkNotNullExpressionValue(setKeySet, "<get-keys>(...)");
            strPythonishString2 = (String) CollectionsKt.first(setKeySet);
        }
        String strPythonishString3 = pythonishString(mapEmptyMap.get("active_preset"));
        if (!linkedHashMap.containsKey(strPythonishString3)) {
            strPythonishString3 = BuildConfig.FLAVOR;
        }
        Collection collectionValues = linkedHashMap.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "<get-values>(...)");
        return new MoaSection(strPythonishString2, strPythonishString3, CollectionsKt.toList(collectionValues));
    }

    public final LinkedHashMap<String, Object> presetBody(MoaPreset p) {
        Intrinsics.checkNotNullParameter(p, "p");
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<>();
        LinkedHashMap<String, Object> linkedHashMap2 = linkedHashMap;
        linkedHashMap2.put("enabled", Boolean.valueOf(p.getEnabled()));
        List<MoaSlot> referenceModels = p.getReferenceModels();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(referenceModels, 10));
        for (MoaSlot moaSlot : referenceModels) {
            arrayList.add(MapsKt.linkedMapOf(new Pair[]{TuplesKt.to("provider", moaSlot.getProvider()), TuplesKt.to("model", moaSlot.getModel())}));
        }
        linkedHashMap2.put("reference_models", arrayList);
        linkedHashMap2.put("aggregator", MapsKt.linkedMapOf(new Pair[]{TuplesKt.to("provider", p.getAggregator().getProvider()), TuplesKt.to("model", p.getAggregator().getModel())}));
        Double referenceTemperature = p.getReferenceTemperature();
        if (referenceTemperature != null) {
            linkedHashMap2.put("reference_temperature", Double.valueOf(referenceTemperature.doubleValue()));
        }
        Double aggregatorTemperature = p.getAggregatorTemperature();
        if (aggregatorTemperature != null) {
            linkedHashMap2.put("aggregator_temperature", Double.valueOf(aggregatorTemperature.doubleValue()));
        }
        Integer maxTokens = p.getMaxTokens();
        if (maxTokens != null) {
            linkedHashMap2.put("max_tokens", Integer.valueOf(maxTokens.intValue()));
        }
        for (Map.Entry<String, Object> entry : p.getExtras().entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (!linkedHashMap2.containsKey(key)) {
                linkedHashMap2.put(key, value);
            }
        }
        return linkedHashMap;
    }
}
