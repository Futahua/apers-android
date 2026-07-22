package com.hermes.android.data.oauth;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;

/* JADX INFO: compiled from: OauthConstants.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/hermes/android/data/oauth/OauthConstants;", BuildConfig.FLAVOR, "<init>", "()V", "OpenAiCodex", "XaiGrok", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class OauthConstants {
    public static final int $stable = 0;
    public static final OauthConstants INSTANCE = new OauthConstants();

    /* JADX INFO: compiled from: OauthConstants.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/hermes/android/data/oauth/OauthConstants$OpenAiCodex;", BuildConfig.FLAVOR, "<init>", "()V", "CLIENT_ID", BuildConfig.FLAVOR, "AUTHORIZE_URL", "TOKEN_URL", "REDIRECT_URI", "SCOPES", "CALLBACK_PORT", BuildConfig.FLAVOR, "CALLBACK_PATH", "ORIGINATOR", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class OpenAiCodex {
        public static final int $stable = 0;
        public static final String AUTHORIZE_URL = "https://auth.openai.com/oauth/authorize";
        public static final String CALLBACK_PATH = "/auth/callback";
        public static final int CALLBACK_PORT = 1455;
        public static final String CLIENT_ID = "app_EMoamEEZ73f0CkXaXp7hrann";
        public static final OpenAiCodex INSTANCE = new OpenAiCodex();
        public static final String ORIGINATOR = "hermes-agent-android";
        public static final String REDIRECT_URI = "http://localhost:1455/auth/callback";
        public static final String SCOPES = "openid profile email offline_access";
        public static final String TOKEN_URL = "https://auth.openai.com/oauth/token";

        private OpenAiCodex() {
        }
    }

    private OauthConstants() {
    }

    /* JADX INFO: compiled from: OauthConstants.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/hermes/android/data/oauth/OauthConstants$XaiGrok;", BuildConfig.FLAVOR, "<init>", "()V", "CLIENT_ID", BuildConfig.FLAVOR, "ISSUER", "DISCOVERY_URL", "REDIRECT_URI", "SCOPES", "CALLBACK_PORT", BuildConfig.FLAVOR, "CALLBACK_PATH", "PLAN", "REFERRER", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class XaiGrok {
        public static final int $stable = 0;
        public static final String CALLBACK_PATH = "/callback";
        public static final int CALLBACK_PORT = 56121;
        public static final String CLIENT_ID = "b1a00492-073a-47ea-816f-4c329264a828";
        public static final String DISCOVERY_URL = "https://auth.x.ai/.well-known/openid-configuration";
        public static final XaiGrok INSTANCE = new XaiGrok();
        public static final String ISSUER = "https://auth.x.ai";
        public static final String PLAN = "generic";
        public static final String REDIRECT_URI = "http://127.0.0.1:56121/callback";
        public static final String REFERRER = "hermes-agent";
        public static final String SCOPES = "openid profile email offline_access grok-cli:access api:access";

        private XaiGrok() {
        }
    }
}
