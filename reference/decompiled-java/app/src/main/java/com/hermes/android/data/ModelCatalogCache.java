package com.hermes.android.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.json.JSONArray;

/* JADX INFO: compiled from: ModelCatalogCache.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0011J\u0015\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0013J#\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u00152\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0018JA\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00050\u00152\u0006\u0010\u0010\u001a\u00020\u00052$\u0010\u001a\u001a \u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\u001c0\u001bH\u0000¢\u0006\u0002\b\u001dJ\u001d\u0010\u001e\u001a\n  *\u0004\u0018\u00010\u001f0\u001f2\u0006\u0010!\u001a\u00020\"H\u0002¢\u0006\u0002\u0010#J\u001c\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00050\u00152\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0010\u001a\u00020\u0005J \u0010%\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010&\u001a\u00020\bJB\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00050\u00152\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0010\u001a\u00020\u00052$\u0010\u001a\u001a \u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\u001c0\u001bJ \u0010(\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00150)2\u0006\u0010!\u001a\u00020\"R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcom/hermes/android/data/ModelCatalogCache;", BuildConfig.FLAVOR, "<init>", "()V", "TAG", BuildConfig.FLAVOR, "PREFS", "TTL_MS", BuildConfig.FLAVOR, "FETCH_TIMEOUT_MS", "SUGGESTION_CAP", BuildConfig.FLAVOR, "SAFE_PROVIDER", "Lkotlin/text/Regex;", "isValidProvider", BuildConfig.FLAVOR, "hermesProvider", "isValidProvider$app_release", "buildFetchCommand", "buildFetchCommand$app_release", "parseModelIds", BuildConfig.FLAVOR, "rc", "out", "parseModelIds$app_release", "fetchModelIds", "runInTermux", "Lkotlin/Function2;", "Lkotlin/Pair;", "fetchModelIds$app_release", "prefs", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "context", "Landroid/content/Context;", "(Landroid/content/Context;)Landroid/content/SharedPreferences;", "cached", "needsRefresh", "nowMs", "fetchAndCache", "cachedAll", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class ModelCatalogCache {
    private static final long FETCH_TIMEOUT_MS = 30000;
    private static final String PREFS = "model_catalog";
    public static final int SUGGESTION_CAP = 500;
    private static final String TAG = "ModelCatalog";
    private static final long TTL_MS = 21600000;
    public static final ModelCatalogCache INSTANCE = new ModelCatalogCache();
    private static final Regex SAFE_PROVIDER = new Regex("^[A-Za-z0-9_.-]+$");
    public static final int $stable = 8;

    private ModelCatalogCache() {
    }

    public final boolean isValidProvider$app_release(String hermesProvider) {
        Intrinsics.checkNotNullParameter(hermesProvider, "hermesProvider");
        String str = hermesProvider;
        return !StringsKt.isBlank(str) && SAFE_PROVIDER.matches(str);
    }

    public final String buildFetchCommand$app_release(String hermesProvider) {
        Intrinsics.checkNotNullParameter(hermesProvider, "hermesProvider");
        return "python3 -c \"from hermes_cli.env_loader import load_hermes_dotenv; load_hermes_dotenv(); from hermes_cli.models import provider_model_ids; import json; print(json.dumps(provider_model_ids('" + hermesProvider + "')))\" 2>/dev/null";
    }

    public final List<String> parseModelIds$app_release(int rc, String out) {
        Object objPrevious;
        Intrinsics.checkNotNullParameter(out, "out");
        if (rc != 0) {
            return CollectionsKt.emptyList();
        }
        List listLines = StringsKt.lines(StringsKt.trim(out).toString());
        ListIterator listIterator = listLines.listIterator(listLines.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
            if (StringsKt.startsWith$default(StringsKt.trim((String) objPrevious).toString(), "[", false, 2, (Object) null)) {
                break;
            }
        }
        String str = (String) objPrevious;
        if (str == null) {
            return CollectionsKt.emptyList();
        }
        try {
            JSONArray jSONArray = new JSONArray(StringsKt.trim(str).toString());
            Iterable iterableUntil = RangesKt.until(0, jSONArray.length());
            ArrayList arrayList = new ArrayList();
            IntIterator it = iterableUntil.iterator();
            while (it.hasNext()) {
                String strOptString = jSONArray.optString(it.nextInt());
                Intrinsics.checkNotNull(strOptString);
                if (StringsKt.isBlank(strOptString)) {
                    strOptString = null;
                }
                if (strOptString != null) {
                    arrayList.add(strOptString);
                }
            }
            return CollectionsKt.take(arrayList, SUGGESTION_CAP);
        } catch (Exception unused) {
            return CollectionsKt.emptyList();
        }
    }

    public final List<String> fetchModelIds$app_release(String hermesProvider, Function2<? super String, ? super Long, Pair<Integer, String>> runInTermux) {
        Intrinsics.checkNotNullParameter(hermesProvider, "hermesProvider");
        Intrinsics.checkNotNullParameter(runInTermux, "runInTermux");
        if (!isValidProvider$app_release(hermesProvider)) {
            return CollectionsKt.emptyList();
        }
        try {
            Pair pair = (Pair) runInTermux.invoke(buildFetchCommand$app_release(hermesProvider), Long.valueOf(FETCH_TIMEOUT_MS));
            return parseModelIds$app_release(((Number) pair.component1()).intValue(), (String) pair.component2());
        } catch (Exception e) {
            Log.w(TAG, "fetch(" + hermesProvider + ") failed: " + e.getMessage());
            return CollectionsKt.emptyList();
        }
    }

    private final SharedPreferences prefs(Context context) {
        return context.getSharedPreferences(PREFS, 0);
    }

    public final List<String> cached(Context context, String hermesProvider) {
        String string;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(hermesProvider, "hermesProvider");
        if (isValidProvider$app_release(hermesProvider) && (string = prefs(context).getString("models_" + hermesProvider, null)) != null) {
            return parseModelIds$app_release(0, string);
        }
        return CollectionsKt.emptyList();
    }

    public static /* synthetic */ boolean needsRefresh$default(ModelCatalogCache modelCatalogCache, Context context, String str, long j, int i, Object obj) {
        if ((i & 4) != 0) {
            j = System.currentTimeMillis();
        }
        return modelCatalogCache.needsRefresh(context, str, j);
    }

    public final boolean needsRefresh(Context context, String hermesProvider, long nowMs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(hermesProvider, "hermesProvider");
        SharedPreferences sharedPreferencesPrefs = prefs(context);
        return sharedPreferencesPrefs.getString(new StringBuilder("models_").append(hermesProvider).toString(), null) == null || nowMs - sharedPreferencesPrefs.getLong(new StringBuilder("ts_").append(hermesProvider).toString(), 0L) > TTL_MS;
    }

    public final List<String> fetchAndCache(Context context, String hermesProvider, Function2<? super String, ? super Long, Pair<Integer, String>> runInTermux) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(hermesProvider, "hermesProvider");
        Intrinsics.checkNotNullParameter(runInTermux, "runInTermux");
        List<String> listFetchModelIds$app_release = fetchModelIds$app_release(hermesProvider, runInTermux);
        List<String> list = listFetchModelIds$app_release;
        if (!list.isEmpty()) {
            prefs(context).edit().putString("models_" + hermesProvider, new JSONArray((Collection) list).toString()).putLong("ts_" + hermesProvider, System.currentTimeMillis()).apply();
            Log.i(TAG, "cached " + listFetchModelIds$app_release.size() + " models for " + hermesProvider);
        }
        return listFetchModelIds$app_release;
    }

    public final Map<String, List<String>> cachedAll(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        List<AiProvider> all = AiProvider.INSTANCE.getALL();
        ArrayList arrayList = new ArrayList();
        for (Object obj : all) {
            AiProvider aiProvider = (AiProvider) obj;
            if (aiProvider.getAllowsCustomModel() && !StringsKt.isBlank(aiProvider.getHermesProvider())) {
                arrayList.add(obj);
            }
        }
        ArrayList<AiProvider> arrayList2 = arrayList;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(arrayList2, 10)), 16));
        for (AiProvider aiProvider2 : arrayList2) {
            Pair pair = TuplesKt.to(aiProvider2.getId(), INSTANCE.cached(context, aiProvider2.getHermesProvider()));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (!((List) entry.getValue()).isEmpty()) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap2;
    }
}
