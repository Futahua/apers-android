package com.hermes.android.data.oauth;

import android.util.Log;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.BootstrapManager;
import com.hermes.android.HermesPaths;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: NousCredentialStore.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\f\u001a\u00020\rJ\u001b\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\u0006\u0010\u0015\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/hermes/android/data/oauth/NousCredentialStore;", BuildConfig.FLAVOR, "bootstrap", "Lcom/hermes/android/BootstrapManager;", "<init>", "(Lcom/hermes/android/BootstrapManager;)V", "hermesDir", "Ljava/io/File;", "getHermesDir", "()Ljava/io/File;", "authFile", "getAuthFile", "exists", BuildConfig.FLAVOR, "write", "Lkotlin/Result;", BuildConfig.FLAVOR, "tokenJson", "Lorg/json/JSONObject;", "write-IoAF18A", "(Lorg/json/JSONObject;)Ljava/lang/Object;", "clear", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class NousCredentialStore {
    private static final String PROVIDER_ID = "nous";
    private static final String TAG = "NousCredStore";
    private final BootstrapManager bootstrap;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    public NousCredentialStore(BootstrapManager bootstrapManager) {
        Intrinsics.checkNotNullParameter(bootstrapManager, "bootstrap");
        this.bootstrap = bootstrapManager;
    }

    /* JADX INFO: compiled from: NousCredentialStore.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u000bH\u0000¢\u0006\u0002\b\fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/hermes/android/data/oauth/NousCredentialStore$Companion;", BuildConfig.FLAVOR, "<init>", "()V", "TAG", BuildConfig.FLAVOR, "PROVIDER_ID", "buildState", "Lorg/json/JSONObject;", "tokenJson", "now", "Ljava/util/Date;", "buildState$app_release", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ JSONObject buildState$app_release$default(Companion companion, JSONObject jSONObject, Date date, int i, Object obj) {
            if ((i & 2) != 0) {
                date = new Date();
            }
            return companion.buildState$app_release(jSONObject, date);
        }

        public final JSONObject buildState$app_release(JSONObject tokenJson, Date now) throws JSONException {
            Intrinsics.checkNotNullParameter(tokenJson, "tokenJson");
            Intrinsics.checkNotNullParameter(now, "now");
            int iOptInt = tokenJson.optInt("expires_in", 3600);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            Object objOptString = tokenJson.optString("refresh_token");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("portal_base_url", NousDeviceCodeClient.PORTAL_BASE_URL);
            jSONObject.put("inference_base_url", NousDeviceCodeClient.INFERENCE_BASE_URL);
            jSONObject.put("client_id", NousDeviceCodeClient.CLIENT_ID);
            String strOptString = tokenJson.optString("scope");
            if (StringsKt.isBlank(strOptString)) {
                strOptString = NousDeviceCodeClient.SCOPE;
            }
            jSONObject.put("scope", strOptString);
            String strOptString2 = tokenJson.optString("token_type");
            if (StringsKt.isBlank(strOptString2)) {
                strOptString2 = "Bearer";
            }
            jSONObject.put("token_type", strOptString2);
            jSONObject.put("access_token", tokenJson.getString("access_token"));
            Intrinsics.checkNotNull(objOptString);
            if (StringsKt.isBlank((CharSequence) objOptString)) {
                objOptString = JSONObject.NULL;
            }
            jSONObject.put("refresh_token", objOptString);
            jSONObject.put("obtained_at", simpleDateFormat.format(now));
            jSONObject.put("expires_at", simpleDateFormat.format(new Date(now.getTime() + (((long) iOptInt) * 1000))));
            jSONObject.put("expires_in", iOptInt);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("insecure", false);
            jSONObject2.put("ca_bundle", JSONObject.NULL);
            Unit unit = Unit.INSTANCE;
            jSONObject.put("tls", jSONObject2);
            jSONObject.put("agent_key", JSONObject.NULL);
            jSONObject.put("agent_key_id", JSONObject.NULL);
            jSONObject.put("agent_key_expires_at", JSONObject.NULL);
            jSONObject.put("agent_key_expires_in", JSONObject.NULL);
            jSONObject.put("agent_key_reused", JSONObject.NULL);
            jSONObject.put("agent_key_obtained_at", JSONObject.NULL);
            return jSONObject;
        }
    }

    private final File getHermesDir() {
        return HermesPaths.INSTANCE.hermesHome(this.bootstrap.getHomeDir());
    }

    private final File getAuthFile() {
        return AuthJsonStore.INSTANCE.authFile(getHermesDir());
    }

    public final boolean exists() {
        return getAuthFile().exists();
    }

    /* JADX INFO: renamed from: write-IoAF18A, reason: not valid java name */
    public final Object m21writeIoAF18A(JSONObject tokenJson) {
        Intrinsics.checkNotNullParameter(tokenJson, "tokenJson");
        try {
            Result.Companion companion = Result.Companion;
            NousCredentialStore nousCredentialStore = this;
            AuthJsonStore.INSTANCE.writeProviderState(getHermesDir(), PROVIDER_ID, Companion.buildState$app_release$default(INSTANCE, tokenJson, null, 2, null));
            Log.i(TAG, "Wrote Nous Portal creds to " + getAuthFile().getAbsolutePath());
            return Result.constructor-impl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.constructor-impl(ResultKt.createFailure(th));
        }
    }

    public final boolean clear() {
        boolean zClearProvider = AuthJsonStore.INSTANCE.clearProvider(getHermesDir(), PROVIDER_ID);
        if (!zClearProvider) {
            Log.w(TAG, "clear() failed");
        }
        return zClearProvider;
    }
}
