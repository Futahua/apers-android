package com.hermes.android.data.oauth;

import android.util.Log;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.BootstrapManager;
import com.hermes.android.HermesPaths;
import com.hermes.android.data.oauth.XaiOauthRepository;
import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: XaiCredentialStore.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\f\u001a\u00020\rJ+\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\t¨\u0006\u001b"}, d2 = {"Lcom/hermes/android/data/oauth/XaiCredentialStore;", BuildConfig.FLAVOR, "bootstrap", "Lcom/hermes/android/BootstrapManager;", "<init>", "(Lcom/hermes/android/BootstrapManager;)V", "hermesDir", "Ljava/io/File;", "getHermesDir", "()Ljava/io/File;", "authFile", "getAuthFile", "exists", BuildConfig.FLAVOR, "write", "Lkotlin/Result;", BuildConfig.FLAVOR, "tokens", "Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;", "discovery", "Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;", "redirectUri", BuildConfig.FLAVOR, "write-0E7RQCE", "(Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;Ljava/lang/String;)Ljava/lang/Object;", "clear", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class XaiCredentialStore {
    private static final String PROVIDER_ID = "xai-oauth";
    private static final String TAG = "XaiCredStore";
    private final BootstrapManager bootstrap;
    public static final int $stable = 8;

    public XaiCredentialStore(BootstrapManager bootstrapManager) {
        Intrinsics.checkNotNullParameter(bootstrapManager, "bootstrap");
        this.bootstrap = bootstrapManager;
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

    /* JADX INFO: renamed from: write-0E7RQCE, reason: not valid java name */
    public final Object m23write0E7RQCE(XaiOauthRepository.TokenSet tokens, XaiOauthRepository.Discovery discovery, String redirectUri) {
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        Intrinsics.checkNotNullParameter(discovery, "discovery");
        Intrinsics.checkNotNullParameter(redirectUri, "redirectUri");
        try {
            Result.Companion companion = Result.Companion;
            XaiCredentialStore xaiCredentialStore = this;
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("access_token", tokens.getAccessToken());
            Object refreshToken = tokens.getRefreshToken();
            if (refreshToken == null) {
                refreshToken = JSONObject.NULL;
            }
            jSONObject2.put("refresh_token", refreshToken);
            if (tokens.getIdToken() != null) {
                jSONObject2.put("id_token", tokens.getIdToken());
            }
            if (tokens.getExpiresIn() != null) {
                jSONObject2.put("expires_in", tokens.getExpiresIn().intValue());
            }
            if (tokens.getTokenType() != null) {
                jSONObject2.put("token_type", tokens.getTokenType());
            }
            Unit unit = Unit.INSTANCE;
            jSONObject.put("tokens", jSONObject2);
            jSONObject.put("last_refresh", AuthJsonStore.INSTANCE.nowIso8601());
            jSONObject.put("auth_mode", "oauth_pkce");
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("authorization_endpoint", discovery.getAuthorizationEndpoint());
            jSONObject3.put("token_endpoint", discovery.getTokenEndpoint());
            Unit unit2 = Unit.INSTANCE;
            jSONObject.put("discovery", jSONObject3);
            jSONObject.put("redirect_uri", redirectUri);
            AuthJsonStore.INSTANCE.writeProviderState(getHermesDir(), PROVIDER_ID, jSONObject);
            Log.i(TAG, "Wrote xAI Grok creds to " + getAuthFile().getAbsolutePath());
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
