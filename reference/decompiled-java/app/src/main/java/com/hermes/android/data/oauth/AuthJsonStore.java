package com.hermes.android.data.oauth;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.io.File;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.SetsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: AuthJsonStore.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\nJ\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\n0\u00132\u0006\u0010\b\u001a\u00020\u0007J\b\u0010\u0014\u001a\u00020\u000fH\u0002J\u0018\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0011H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/hermes/android/data/oauth/AuthJsonStore;", BuildConfig.FLAVOR, "<init>", "()V", "AUTH_STORE_VERSION", BuildConfig.FLAVOR, "authFile", "Ljava/io/File;", "hermesDir", "nowIso8601", BuildConfig.FLAVOR, "writeProviderState", BuildConfig.FLAVOR, "providerId", "state", "Lorg/json/JSONObject;", "clearProvider", BuildConfig.FLAVOR, "configuredProviders", BuildConfig.FLAVOR, "emptyStore", "restrictToOwner", "f", "keepExecutable", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class AuthJsonStore {
    public static final int $stable = 0;
    public static final int AUTH_STORE_VERSION = 1;
    public static final AuthJsonStore INSTANCE = new AuthJsonStore();

    private AuthJsonStore() {
    }

    public final File authFile(File hermesDir) {
        Intrinsics.checkNotNullParameter(hermesDir, "hermesDir");
        return new File(hermesDir, "auth.json");
    }

    public final String nowIso8601() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String str = simpleDateFormat.format(new Date());
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    public final void writeProviderState(File hermesDir, String providerId, JSONObject state) throws JSONException {
        Object obj;
        JSONObject jSONObjectEmptyStore;
        Intrinsics.checkNotNullParameter(hermesDir, "hermesDir");
        Intrinsics.checkNotNullParameter(providerId, "providerId");
        Intrinsics.checkNotNullParameter(state, "state");
        hermesDir.mkdirs();
        restrictToOwner(hermesDir, true);
        File fileAuthFile = authFile(hermesDir);
        if (fileAuthFile.exists()) {
            try {
                Result.Companion companion = Result.Companion;
                AuthJsonStore authJsonStore = this;
                obj = Result.constructor-impl(new JSONObject(FilesKt.readText$default(fileAuthFile, (Charset) null, 1, (Object) null)));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                obj = Result.constructor-impl(ResultKt.createFailure(th));
            }
            if (Result.isFailure-impl(obj)) {
                obj = null;
            }
            jSONObjectEmptyStore = (JSONObject) obj;
            if (jSONObjectEmptyStore == null) {
                jSONObjectEmptyStore = emptyStore();
            }
        } else {
            jSONObjectEmptyStore = emptyStore();
        }
        if (!jSONObjectEmptyStore.has("providers") || jSONObjectEmptyStore.optJSONObject("providers") == null) {
            jSONObjectEmptyStore.put("providers", new JSONObject());
        }
        jSONObjectEmptyStore.getJSONObject("providers").put(providerId, state);
        jSONObjectEmptyStore.put("version", 1);
        jSONObjectEmptyStore.put("updated_at", nowIso8601());
        String string = jSONObjectEmptyStore.toString(2);
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        FilesKt.writeText$default(fileAuthFile, string, (Charset) null, 2, (Object) null);
        restrictToOwner(fileAuthFile, false);
    }

    public final boolean clearProvider(File hermesDir, String providerId) {
        Object obj;
        Object obj2;
        Intrinsics.checkNotNullParameter(hermesDir, "hermesDir");
        Intrinsics.checkNotNullParameter(providerId, "providerId");
        try {
            Result.Companion companion = Result.Companion;
            AuthJsonStore authJsonStore = this;
            File fileAuthFile = authFile(hermesDir);
            boolean zDelete = true;
            if (fileAuthFile.exists()) {
                try {
                    Result.Companion companion2 = Result.Companion;
                    obj2 = Result.constructor-impl(new JSONObject(FilesKt.readText$default(fileAuthFile, (Charset) null, 1, (Object) null)));
                } catch (Throwable th) {
                    Result.Companion companion3 = Result.Companion;
                    obj2 = Result.constructor-impl(ResultKt.createFailure(th));
                }
                if (Result.isFailure-impl(obj2)) {
                    obj2 = null;
                }
                JSONObject jSONObject = (JSONObject) obj2;
                if (jSONObject == null) {
                    zDelete = fileAuthFile.delete();
                } else {
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("providers");
                    if (jSONObjectOptJSONObject != null) {
                        jSONObjectOptJSONObject.remove(providerId);
                    }
                    String string = jSONObject.toString(2);
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    FilesKt.writeText$default(fileAuthFile, string, (Charset) null, 2, (Object) null);
                }
            }
            obj = Result.constructor-impl(Boolean.valueOf(zDelete));
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th2));
        }
        if (Result.isFailure-impl(obj)) {
            obj = false;
        }
        return ((Boolean) obj).booleanValue();
    }

    public final Set<String> configuredProviders(File hermesDir) {
        Object obj;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        Intrinsics.checkNotNullParameter(hermesDir, "hermesDir");
        File fileAuthFile = authFile(hermesDir);
        if (!fileAuthFile.exists()) {
            return SetsKt.emptySet();
        }
        try {
            Result.Companion companion = Result.Companion;
            AuthJsonStore authJsonStore = this;
            jSONObjectOptJSONObject = new JSONObject(FilesKt.readText$default(fileAuthFile, (Charset) null, 1, (Object) null)).optJSONObject("providers");
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        if (jSONObjectOptJSONObject == null) {
            return SetsKt.emptySet();
        }
        Set setCreateSetBuilder = SetsKt.createSetBuilder();
        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
        Intrinsics.checkNotNullExpressionValue(itKeys, "keys(...)");
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject(next);
            if (jSONObjectOptJSONObject3 != null && (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject3.optJSONObject("tokens")) != null) {
                String strOptString = jSONObjectOptJSONObject2.optString("access_token");
                Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
                if (!StringsKt.isBlank(strOptString)) {
                    setCreateSetBuilder.add(next);
                }
            }
        }
        obj = Result.constructor-impl(SetsKt.build(setCreateSetBuilder));
        Set setEmptySet = SetsKt.emptySet();
        if (Result.isFailure-impl(obj)) {
            obj = setEmptySet;
        }
        return (Set) obj;
    }

    private final JSONObject emptyStore() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", 1);
        jSONObject.put("providers", new JSONObject());
        return jSONObject;
    }

    private final void restrictToOwner(File f, boolean keepExecutable) {
        f.setReadable(false, false);
        f.setReadable(true, true);
        f.setWritable(false, false);
        f.setWritable(true, true);
        if (keepExecutable) {
            f.setExecutable(false, false);
            f.setExecutable(true, true);
        } else {
            f.setExecutable(false, false);
        }
    }
}
