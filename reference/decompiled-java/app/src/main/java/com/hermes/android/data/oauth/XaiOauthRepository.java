package com.hermes.android.data.oauth;

import android.net.Uri;
import android.util.Log;
import com.google.common.net.HttpHeaders;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.data.oauth.OauthConstants;
import java.io.Closeable;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONObject;

/* JADX INFO: compiled from: XaiOauthRepository.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 \u00162\u00020\u0001:\u0005\u0016\u0017\u0018\u0019\u001aB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0002J\u0006\u0010\n\u001a\u00020\u000bJ&\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tJ&\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/hermes/android/data/oauth/XaiOauthRepository;", BuildConfig.FLAVOR, "<init>", "()V", "http", "Lokhttp3/OkHttpClient;", "isXaiHost", BuildConfig.FLAVOR, "url", BuildConfig.FLAVOR, "discover", "Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult;", "buildAuthorizeUrl", "discovery", "Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;", "challenge", "state", "nonce", "exchangeCode", "Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult;", "code", "verifier", "Companion", "Discovery", "TokenSet", "DiscoveryResult", "TokenResult", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class XaiOauthRepository {
    private static final String TAG = "XaiOauth";
    private final OkHttpClient http = new OkHttpClient.Builder().connectTimeout(15, TimeUnit.SECONDS).readTimeout(20, TimeUnit.SECONDS).build();
    public static final int $stable = 8;

    /* JADX INFO: compiled from: XaiOauthRepository.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;", BuildConfig.FLAVOR, "authorizationEndpoint", BuildConfig.FLAVOR, "tokenEndpoint", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getAuthorizationEndpoint", "()Ljava/lang/String;", "getTokenEndpoint", "component1", "component2", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class Discovery {
        public static final int $stable = 0;
        private final String authorizationEndpoint;
        private final String tokenEndpoint;

        public static /* synthetic */ Discovery copy$default(Discovery discovery, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = discovery.authorizationEndpoint;
            }
            if ((i & 2) != 0) {
                str2 = discovery.tokenEndpoint;
            }
            return discovery.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getAuthorizationEndpoint() {
            return this.authorizationEndpoint;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getTokenEndpoint() {
            return this.tokenEndpoint;
        }

        public final Discovery copy(String authorizationEndpoint, String tokenEndpoint) {
            Intrinsics.checkNotNullParameter(authorizationEndpoint, "authorizationEndpoint");
            Intrinsics.checkNotNullParameter(tokenEndpoint, "tokenEndpoint");
            return new Discovery(authorizationEndpoint, tokenEndpoint);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Discovery)) {
                return false;
            }
            Discovery discovery = (Discovery) other;
            return Intrinsics.areEqual(this.authorizationEndpoint, discovery.authorizationEndpoint) && Intrinsics.areEqual(this.tokenEndpoint, discovery.tokenEndpoint);
        }

        public int hashCode() {
            return (this.authorizationEndpoint.hashCode() * 31) + this.tokenEndpoint.hashCode();
        }

        public String toString() {
            return "Discovery(authorizationEndpoint=" + this.authorizationEndpoint + ", tokenEndpoint=" + this.tokenEndpoint + ")";
        }

        public Discovery(String str, String str2) {
            Intrinsics.checkNotNullParameter(str, "authorizationEndpoint");
            Intrinsics.checkNotNullParameter(str2, "tokenEndpoint");
            this.authorizationEndpoint = str;
            this.tokenEndpoint = str2;
        }

        public final String getAuthorizationEndpoint() {
            return this.authorizationEndpoint;
        }

        public final String getTokenEndpoint() {
            return this.tokenEndpoint;
        }
    }

    /* JADX INFO: compiled from: XaiOauthRepository.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003JH\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;", BuildConfig.FLAVOR, "accessToken", BuildConfig.FLAVOR, "refreshToken", "expiresIn", BuildConfig.FLAVOR, "tokenType", "idToken", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getAccessToken", "()Ljava/lang/String;", "getRefreshToken", "getExpiresIn", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getTokenType", "getIdToken", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;", "equals", BuildConfig.FLAVOR, "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class TokenSet {
        public static final int $stable = 0;
        private final String accessToken;
        private final Integer expiresIn;
        private final String idToken;
        private final String refreshToken;
        private final String tokenType;

        public static /* synthetic */ TokenSet copy$default(TokenSet tokenSet, String str, String str2, Integer num, String str3, String str4, int i, Object obj) {
            if ((i & 1) != 0) {
                str = tokenSet.accessToken;
            }
            if ((i & 2) != 0) {
                str2 = tokenSet.refreshToken;
            }
            String str5 = str2;
            if ((i & 4) != 0) {
                num = tokenSet.expiresIn;
            }
            Integer num2 = num;
            if ((i & 8) != 0) {
                str3 = tokenSet.tokenType;
            }
            String str6 = str3;
            if ((i & 16) != 0) {
                str4 = tokenSet.idToken;
            }
            return tokenSet.copy(str, str5, num2, str6, str4);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getAccessToken() {
            return this.accessToken;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getRefreshToken() {
            return this.refreshToken;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Integer getExpiresIn() {
            return this.expiresIn;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getTokenType() {
            return this.tokenType;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getIdToken() {
            return this.idToken;
        }

        public final TokenSet copy(String accessToken, String refreshToken, Integer expiresIn, String tokenType, String idToken) {
            Intrinsics.checkNotNullParameter(accessToken, "accessToken");
            return new TokenSet(accessToken, refreshToken, expiresIn, tokenType, idToken);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TokenSet)) {
                return false;
            }
            TokenSet tokenSet = (TokenSet) other;
            return Intrinsics.areEqual(this.accessToken, tokenSet.accessToken) && Intrinsics.areEqual(this.refreshToken, tokenSet.refreshToken) && Intrinsics.areEqual(this.expiresIn, tokenSet.expiresIn) && Intrinsics.areEqual(this.tokenType, tokenSet.tokenType) && Intrinsics.areEqual(this.idToken, tokenSet.idToken);
        }

        public int hashCode() {
            int iHashCode = this.accessToken.hashCode() * 31;
            String str = this.refreshToken;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            Integer num = this.expiresIn;
            int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
            String str2 = this.tokenType;
            int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.idToken;
            return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
        }

        public String toString() {
            return "TokenSet(accessToken=" + this.accessToken + ", refreshToken=" + this.refreshToken + ", expiresIn=" + this.expiresIn + ", tokenType=" + this.tokenType + ", idToken=" + this.idToken + ")";
        }

        public TokenSet(String str, String str2, Integer num, String str3, String str4) {
            Intrinsics.checkNotNullParameter(str, "accessToken");
            this.accessToken = str;
            this.refreshToken = str2;
            this.expiresIn = num;
            this.tokenType = str3;
            this.idToken = str4;
        }

        public final String getAccessToken() {
            return this.accessToken;
        }

        public final String getRefreshToken() {
            return this.refreshToken;
        }

        public final Integer getExpiresIn() {
            return this.expiresIn;
        }

        public final String getTokenType() {
            return this.tokenType;
        }

        public final String getIdToken() {
            return this.idToken;
        }
    }

    /* JADX INFO: compiled from: XaiOauthRepository.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult;", BuildConfig.FLAVOR, "<init>", "()V", "Success", "Failure", "Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult$Failure;", "Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult$Success;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static abstract class DiscoveryResult {
        public static final int $stable = 0;

        public /* synthetic */ DiscoveryResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: XaiOauthRepository.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult$Success;", "Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult;", "discovery", "Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;", "<init>", "(Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;)V", "getDiscovery", "()Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Success extends DiscoveryResult {
            public static final int $stable = 0;
            private final Discovery discovery;

            public static /* synthetic */ Success copy$default(Success success, Discovery discovery, int i, Object obj) {
                if ((i & 1) != 0) {
                    discovery = success.discovery;
                }
                return success.copy(discovery);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Discovery getDiscovery() {
                return this.discovery;
            }

            public final Success copy(Discovery discovery) {
                Intrinsics.checkNotNullParameter(discovery, "discovery");
                return new Success(discovery);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Success) && Intrinsics.areEqual(this.discovery, ((Success) other).discovery);
            }

            public int hashCode() {
                return this.discovery.hashCode();
            }

            public String toString() {
                return "Success(discovery=" + this.discovery + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Success(Discovery discovery) {
                super(null);
                Intrinsics.checkNotNullParameter(discovery, "discovery");
                this.discovery = discovery;
            }

            public final Discovery getDiscovery() {
                return this.discovery;
            }
        }

        private DiscoveryResult() {
        }

        /* JADX INFO: compiled from: XaiOauthRepository.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult$Failure;", "Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult;", "message", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Failure extends DiscoveryResult {
            public static final int $stable = 0;
            private final String message;

            public static /* synthetic */ Failure copy$default(Failure failure, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = failure.message;
                }
                return failure.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getMessage() {
                return this.message;
            }

            public final Failure copy(String message) {
                Intrinsics.checkNotNullParameter(message, "message");
                return new Failure(message);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Failure) && Intrinsics.areEqual(this.message, ((Failure) other).message);
            }

            public int hashCode() {
                return this.message.hashCode();
            }

            public String toString() {
                return "Failure(message=" + this.message + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Failure(String str) {
                super(null);
                Intrinsics.checkNotNullParameter(str, "message");
                this.message = str;
            }

            public final String getMessage() {
                return this.message;
            }
        }
    }

    /* JADX INFO: compiled from: XaiOauthRepository.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult;", BuildConfig.FLAVOR, "<init>", "()V", "Success", "Failure", "Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Failure;", "Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Success;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static abstract class TokenResult {
        public static final int $stable = 0;

        public /* synthetic */ TokenResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: XaiOauthRepository.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Success;", "Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult;", "tokens", "Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;", "<init>", "(Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;)V", "getTokens", "()Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Success extends TokenResult {
            public static final int $stable = 0;
            private final TokenSet tokens;

            public static /* synthetic */ Success copy$default(Success success, TokenSet tokenSet, int i, Object obj) {
                if ((i & 1) != 0) {
                    tokenSet = success.tokens;
                }
                return success.copy(tokenSet);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final TokenSet getTokens() {
                return this.tokens;
            }

            public final Success copy(TokenSet tokens) {
                Intrinsics.checkNotNullParameter(tokens, "tokens");
                return new Success(tokens);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Success) && Intrinsics.areEqual(this.tokens, ((Success) other).tokens);
            }

            public int hashCode() {
                return this.tokens.hashCode();
            }

            public String toString() {
                return "Success(tokens=" + this.tokens + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Success(TokenSet tokenSet) {
                super(null);
                Intrinsics.checkNotNullParameter(tokenSet, "tokens");
                this.tokens = tokenSet;
            }

            public final TokenSet getTokens() {
                return this.tokens;
            }
        }

        private TokenResult() {
        }

        /* JADX INFO: compiled from: XaiOauthRepository.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Failure;", "Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult;", "message", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Failure extends TokenResult {
            public static final int $stable = 0;
            private final String message;

            public static /* synthetic */ Failure copy$default(Failure failure, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = failure.message;
                }
                return failure.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getMessage() {
                return this.message;
            }

            public final Failure copy(String message) {
                Intrinsics.checkNotNullParameter(message, "message");
                return new Failure(message);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Failure) && Intrinsics.areEqual(this.message, ((Failure) other).message);
            }

            public int hashCode() {
                return this.message.hashCode();
            }

            public String toString() {
                return "Failure(message=" + this.message + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Failure(String str) {
                super(null);
                Intrinsics.checkNotNullParameter(str, "message");
                this.message = str;
            }

            public final String getMessage() {
                return this.message;
            }
        }
    }

    private final boolean isXaiHost(String url) {
        Object obj;
        try {
            Result.Companion companion = Result.Companion;
            XaiOauthRepository xaiOauthRepository = this;
            obj = Result.constructor-impl(Uri.parse(url).getHost());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        if (Result.isFailure-impl(obj)) {
            obj = null;
        }
        String str = (String) obj;
        if (str == null) {
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (lowerCase == null) {
            return false;
        }
        return Intrinsics.areEqual(lowerCase, "x.ai") || StringsKt.endsWith$default(lowerCase, ".x.ai", false, 2, (Object) null);
    }

    public final DiscoveryResult discover() {
        DiscoveryResult.Failure failure;
        Response response;
        Response response2;
        String strString;
        OauthConstants.XaiGrok xaiGrok = OauthConstants.XaiGrok.INSTANCE;
        Request requestBuild = new Request.Builder().url(OauthConstants.XaiGrok.DISCOVERY_URL).header(HttpHeaders.ACCEPT, "application/json").build();
        try {
            Result.Companion companion = Result.Companion;
            XaiOauthRepository xaiOauthRepository = this;
            response = (Closeable) this.http.newCall(requestBuild).execute();
            try {
                response2 = response;
                ResponseBody responseBodyBody = response2.body();
                strString = responseBodyBody != null ? responseBodyBody.string() : null;
                if (strString == null) {
                    strString = BuildConfig.FLAVOR;
                }
            } finally {
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            failure = Result.constructor-impl(ResultKt.createFailure(th));
        }
        if (!response2.isSuccessful()) {
            DiscoveryResult.Failure failure2 = new DiscoveryResult.Failure("HTTP " + response2.code() + ": " + StringsKt.take(strString, 200));
            CloseableKt.closeFinally(response, (Throwable) null);
            return failure2;
        }
        JSONObject jSONObject = new JSONObject(strString);
        String strOptString = jSONObject.optString("authorization_endpoint");
        Intrinsics.checkNotNull(strOptString);
        if (StringsKt.isBlank(strOptString)) {
            strOptString = null;
        }
        if (strOptString == null) {
            DiscoveryResult.Failure failure3 = new DiscoveryResult.Failure("discovery missing authorization_endpoint");
            CloseableKt.closeFinally(response, (Throwable) null);
            return failure3;
        }
        String strOptString2 = jSONObject.optString("token_endpoint");
        Intrinsics.checkNotNull(strOptString2);
        if (StringsKt.isBlank(strOptString2)) {
            strOptString2 = null;
        }
        if (strOptString2 == null) {
            DiscoveryResult.Failure failure4 = new DiscoveryResult.Failure("discovery missing token_endpoint");
            CloseableKt.closeFinally(response, (Throwable) null);
            return failure4;
        }
        if (StringsKt.startsWith$default(strOptString, "https://", false, 2, (Object) null) && StringsKt.startsWith$default(strOptString2, "https://", false, 2, (Object) null)) {
            if (isXaiHost(strOptString) && isXaiHost(strOptString2)) {
                DiscoveryResult.Success success = new DiscoveryResult.Success(new Discovery(strOptString, strOptString2));
                CloseableKt.closeFinally(response, (Throwable) null);
                failure = Result.constructor-impl(success);
                Throwable th2 = Result.exceptionOrNull-impl(failure);
                if (th2 != null) {
                    Log.e(TAG, "discovery threw", th2);
                    String message = th2.getMessage();
                    if (message == null) {
                        message = th2.getClass().getSimpleName();
                    }
                    Intrinsics.checkNotNull(message);
                    failure = new DiscoveryResult.Failure(message);
                }
                return (DiscoveryResult) failure;
            }
            DiscoveryResult.Failure failure5 = new DiscoveryResult.Failure("discovery endpoints must be on x.ai");
            CloseableKt.closeFinally(response, (Throwable) null);
            return failure5;
        }
        DiscoveryResult.Failure failure6 = new DiscoveryResult.Failure("discovery endpoints must be https");
        CloseableKt.closeFinally(response, (Throwable) null);
        return failure6;
    }

    public final String buildAuthorizeUrl(Discovery discovery, String challenge, String state, String nonce) {
        Intrinsics.checkNotNullParameter(discovery, "discovery");
        Intrinsics.checkNotNullParameter(challenge, "challenge");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        OauthConstants.XaiGrok xaiGrok = OauthConstants.XaiGrok.INSTANCE;
        String string = Uri.parse(discovery.getAuthorizationEndpoint()).buildUpon().appendQueryParameter("response_type", "code").appendQueryParameter("client_id", OauthConstants.XaiGrok.CLIENT_ID).appendQueryParameter("redirect_uri", OauthConstants.XaiGrok.REDIRECT_URI).appendQueryParameter("scope", OauthConstants.XaiGrok.SCOPES).appendQueryParameter("code_challenge", challenge).appendQueryParameter("code_challenge_method", "S256").appendQueryParameter("state", state).appendQueryParameter("nonce", nonce).appendQueryParameter("plan", OauthConstants.XaiGrok.PLAN).appendQueryParameter("referrer", OauthConstants.XaiGrok.REFERRER).build().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public final TokenResult exchangeCode(Discovery discovery, String code, String verifier, String challenge) {
        TokenResult.Failure failure;
        Response response;
        Response response2;
        String strString;
        Intrinsics.checkNotNullParameter(discovery, "discovery");
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(verifier, "verifier");
        Intrinsics.checkNotNullParameter(challenge, "challenge");
        OauthConstants.XaiGrok xaiGrok = OauthConstants.XaiGrok.INSTANCE;
        Request requestBuild = new Request.Builder().url(discovery.getTokenEndpoint()).post(new FormBody.Builder((Charset) null, 1, (DefaultConstructorMarker) null).add("grant_type", "authorization_code").add("code", code).add("redirect_uri", OauthConstants.XaiGrok.REDIRECT_URI).add("client_id", OauthConstants.XaiGrok.CLIENT_ID).add("code_verifier", verifier).add("code_challenge", challenge).add("code_challenge_method", "S256").build()).header(HttpHeaders.ACCEPT, "application/json").build();
        try {
            Result.Companion companion = Result.Companion;
            XaiOauthRepository xaiOauthRepository = this;
            response = (Closeable) this.http.newCall(requestBuild).execute();
            try {
                response2 = response;
                ResponseBody responseBodyBody = response2.body();
                strString = responseBodyBody != null ? responseBodyBody.string() : null;
                if (strString == null) {
                    strString = BuildConfig.FLAVOR;
                }
            } finally {
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            failure = Result.constructor-impl(ResultKt.createFailure(th));
        }
        if (!response2.isSuccessful()) {
            Log.w(TAG, "Token exchange failed " + response2.code() + ": " + strString);
            TokenResult.Failure failure2 = new TokenResult.Failure("HTTP " + response2.code() + ": " + StringsKt.take(strString, 200));
            CloseableKt.closeFinally(response, (Throwable) null);
            return failure2;
        }
        JSONObject jSONObject = new JSONObject(strString);
        String strOptString = jSONObject.optString("access_token");
        Intrinsics.checkNotNull(strOptString);
        String str = !StringsKt.isBlank(strOptString) ? strOptString : null;
        if (str == null) {
            TokenResult.Failure failure3 = new TokenResult.Failure("missing access_token");
            CloseableKt.closeFinally(response, (Throwable) null);
            return failure3;
        }
        String strOptString2 = jSONObject.optString("refresh_token");
        Intrinsics.checkNotNull(strOptString2);
        String str2 = !StringsKt.isBlank(strOptString2) ? strOptString2 : null;
        if (str2 == null) {
            TokenResult.Failure failure4 = new TokenResult.Failure("missing refresh_token (re-login required)");
            CloseableKt.closeFinally(response, (Throwable) null);
            return failure4;
        }
        Integer numValueOf = jSONObject.has("expires_in") ? Integer.valueOf(jSONObject.optInt("expires_in")) : null;
        String strOptString3 = jSONObject.optString("token_type");
        Intrinsics.checkNotNull(strOptString3);
        String str3 = !StringsKt.isBlank(strOptString3) ? strOptString3 : null;
        String strOptString4 = jSONObject.optString("id_token");
        Intrinsics.checkNotNull(strOptString4);
        TokenResult.Success success = new TokenResult.Success(new TokenSet(str, str2, numValueOf, str3, !StringsKt.isBlank(strOptString4) ? strOptString4 : null));
        CloseableKt.closeFinally(response, (Throwable) null);
        failure = Result.constructor-impl(success);
        Throwable th2 = Result.exceptionOrNull-impl(failure);
        if (th2 != null) {
            Log.e(TAG, "Token exchange threw", th2);
            String message = th2.getMessage();
            if (message == null) {
                message = th2.getClass().getSimpleName();
            }
            Intrinsics.checkNotNull(message);
            failure = new TokenResult.Failure(message);
        }
        return (TokenResult) failure;
    }
}
