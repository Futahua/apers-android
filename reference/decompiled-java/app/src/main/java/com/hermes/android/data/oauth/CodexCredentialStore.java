package com.hermes.android.data.oauth;

import android.util.Log;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.BootstrapManager;
import com.hermes.android.HermesPaths;
import com.hermes.android.data.oauth.OauthRepository;
import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: CodexCredentialStore.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u001b\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0006\u0010\u0017\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\t¨\u0006\u0019"}, d2 = {"Lcom/hermes/android/data/oauth/CodexCredentialStore;", BuildConfig.FLAVOR, "bootstrap", "Lcom/hermes/android/BootstrapManager;", "<init>", "(Lcom/hermes/android/BootstrapManager;)V", "hermesDir", "Ljava/io/File;", "getHermesDir", "()Ljava/io/File;", "authFile", "getAuthFile", "exists", BuildConfig.FLAVOR, "pathForLogging", BuildConfig.FLAVOR, "write", "Lkotlin/Result;", BuildConfig.FLAVOR, "tokens", "Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;", "write-IoAF18A", "(Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;)Ljava/lang/Object;", "clear", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class CodexCredentialStore {
    private static final String PROVIDER_ID = "openai-codex";
    private static final String TAG = "CodexCredStore";
    private final BootstrapManager bootstrap;
    public static final int $stable = 8;

    public CodexCredentialStore(BootstrapManager bootstrapManager) {
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

    public final String pathForLogging() {
        String absolutePath = getAuthFile().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    /* JADX INFO: renamed from: write-IoAF18A, reason: not valid java name */
    public final Object m20writeIoAF18A(OauthRepository.TokenSet tokens) {
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        try {
            Result.Companion companion = Result.Companion;
            CodexCredentialStore codexCredentialStore = this;
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("access_token", tokens.getAccessToken());
            Object refreshToken = tokens.getRefreshToken();
            if (refreshToken == null) {
                refreshToken = JSONObject.NULL;
            }
            jSONObject2.put("refresh_token", refreshToken);
            Unit unit = Unit.INSTANCE;
            jSONObject.put("tokens", jSONObject2);
            jSONObject.put("last_refresh", AuthJsonStore.INSTANCE.nowIso8601());
            jSONObject.put("auth_mode", "chatgpt");
            AuthJsonStore.INSTANCE.writeProviderState(getHermesDir(), PROVIDER_ID, jSONObject);
            Log.i(TAG, "Wrote codex creds to " + getAuthFile().getAbsolutePath() + " (planType=" + tokens.getPlanType() + ")");
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
