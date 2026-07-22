package com.hermes.android.data.oauth;

import android.net.Uri;
import android.util.Base64;
import android.util.Log;
import com.google.common.net.HttpHeaders;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.data.oauth.OauthConstants;
import java.io.Closeable;
import java.nio.charset.Charset;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONObject;

/* JADX INFO: compiled from: OauthRepository.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00112\u00020\u0001:\u0003\u0011\u0012\u0013B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007J\"\u0010\u000e\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/hermes/android/data/oauth/OauthRepository;", BuildConfig.FLAVOR, "<init>", "()V", "http", "Lokhttp3/OkHttpClient;", "buildAuthorizeUrl", BuildConfig.FLAVOR, "challenge", "state", "exchangeCode", "Lcom/hermes/android/data/oauth/OauthRepository$TokenResult;", "code", "verifier", "parseJwtClaims", "Lkotlin/Pair;", "jwt", "Companion", "TokenResult", "TokenSet", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class OauthRepository {
    private static final String TAG = "OauthRepository";
    private final OkHttpClient http = new OkHttpClient.Builder().connectTimeout(15, TimeUnit.SECONDS).readTimeout(20, TimeUnit.SECONDS).build();
    public static final int $stable = 8;

    public final String buildAuthorizeUrl(String challenge, String state) {
        Intrinsics.checkNotNullParameter(challenge, "challenge");
        Intrinsics.checkNotNullParameter(state, "state");
        OauthConstants.OpenAiCodex openAiCodex = OauthConstants.OpenAiCodex.INSTANCE;
        String string = Uri.parse(OauthConstants.OpenAiCodex.AUTHORIZE_URL).buildUpon().appendQueryParameter("response_type", "code").appendQueryParameter("client_id", OauthConstants.OpenAiCodex.CLIENT_ID).appendQueryParameter("redirect_uri", OauthConstants.OpenAiCodex.REDIRECT_URI).appendQueryParameter("scope", OauthConstants.OpenAiCodex.SCOPES).appendQueryParameter("code_challenge", challenge).appendQueryParameter("code_challenge_method", "S256").appendQueryParameter("state", state).appendQueryParameter("id_token_add_organizations", "true").appendQueryParameter("codex_cli_simplified_flow", "true").appendQueryParameter("originator", OauthConstants.OpenAiCodex.ORIGINATOR).build().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX INFO: compiled from: OauthRepository.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/hermes/android/data/oauth/OauthRepository$TokenResult;", BuildConfig.FLAVOR, "<init>", "()V", "Success", "Failure", "Lcom/hermes/android/data/oauth/OauthRepository$TokenResult$Failure;", "Lcom/hermes/android/data/oauth/OauthRepository$TokenResult$Success;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static abstract class TokenResult {
        public static final int $stable = 0;

        public /* synthetic */ TokenResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: OauthRepository.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/hermes/android/data/oauth/OauthRepository$TokenResult$Success;", "Lcom/hermes/android/data/oauth/OauthRepository$TokenResult;", "tokens", "Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;", "<init>", "(Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;)V", "getTokens", "()Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
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

        /* JADX INFO: compiled from: OauthRepository.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/hermes/android/data/oauth/OauthRepository$TokenResult$Failure;", "Lcom/hermes/android/data/oauth/OauthRepository$TokenResult;", "message", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
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

    /* JADX INFO: compiled from: OauthRepository.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J^\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\u0007HÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000e¨\u0006%"}, d2 = {"Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;", BuildConfig.FLAVOR, "idToken", BuildConfig.FLAVOR, "accessToken", "refreshToken", "expiresIn", BuildConfig.FLAVOR, "tokenType", "accountId", "planType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getIdToken", "()Ljava/lang/String;", "getAccessToken", "getRefreshToken", "getExpiresIn", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getTokenType", "getAccountId", "getPlanType", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;", "equals", BuildConfig.FLAVOR, "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class TokenSet {
        public static final int $stable = 0;
        private final String accessToken;
        private final String accountId;
        private final Integer expiresIn;
        private final String idToken;
        private final String planType;
        private final String refreshToken;
        private final String tokenType;

        public static /* synthetic */ TokenSet copy$default(TokenSet tokenSet, String str, String str2, String str3, Integer num, String str4, String str5, String str6, int i, Object obj) {
            if ((i & 1) != 0) {
                str = tokenSet.idToken;
            }
            if ((i & 2) != 0) {
                str2 = tokenSet.accessToken;
            }
            String str7 = str2;
            if ((i & 4) != 0) {
                str3 = tokenSet.refreshToken;
            }
            String str8 = str3;
            if ((i & 8) != 0) {
                num = tokenSet.expiresIn;
            }
            Integer num2 = num;
            if ((i & 16) != 0) {
                str4 = tokenSet.tokenType;
            }
            String str9 = str4;
            if ((i & 32) != 0) {
                str5 = tokenSet.accountId;
            }
            String str10 = str5;
            if ((i & 64) != 0) {
                str6 = tokenSet.planType;
            }
            return tokenSet.copy(str, str7, str8, num2, str9, str10, str6);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getIdToken() {
            return this.idToken;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getAccessToken() {
            return this.accessToken;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getRefreshToken() {
            return this.refreshToken;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final Integer getExpiresIn() {
            return this.expiresIn;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getTokenType() {
            return this.tokenType;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final String getAccountId() {
            return this.accountId;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final String getPlanType() {
            return this.planType;
        }

        public final TokenSet copy(String idToken, String accessToken, String refreshToken, Integer expiresIn, String tokenType, String accountId, String planType) {
            Intrinsics.checkNotNullParameter(idToken, "idToken");
            Intrinsics.checkNotNullParameter(accessToken, "accessToken");
            return new TokenSet(idToken, accessToken, refreshToken, expiresIn, tokenType, accountId, planType);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TokenSet)) {
                return false;
            }
            TokenSet tokenSet = (TokenSet) other;
            return Intrinsics.areEqual(this.idToken, tokenSet.idToken) && Intrinsics.areEqual(this.accessToken, tokenSet.accessToken) && Intrinsics.areEqual(this.refreshToken, tokenSet.refreshToken) && Intrinsics.areEqual(this.expiresIn, tokenSet.expiresIn) && Intrinsics.areEqual(this.tokenType, tokenSet.tokenType) && Intrinsics.areEqual(this.accountId, tokenSet.accountId) && Intrinsics.areEqual(this.planType, tokenSet.planType);
        }

        public int hashCode() {
            int iHashCode = ((this.idToken.hashCode() * 31) + this.accessToken.hashCode()) * 31;
            String str = this.refreshToken;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            Integer num = this.expiresIn;
            int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
            String str2 = this.tokenType;
            int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.accountId;
            int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.planType;
            return iHashCode5 + (str4 != null ? str4.hashCode() : 0);
        }

        public String toString() {
            return "TokenSet(idToken=" + this.idToken + ", accessToken=" + this.accessToken + ", refreshToken=" + this.refreshToken + ", expiresIn=" + this.expiresIn + ", tokenType=" + this.tokenType + ", accountId=" + this.accountId + ", planType=" + this.planType + ")";
        }

        public TokenSet(String str, String str2, String str3, Integer num, String str4, String str5, String str6) {
            Intrinsics.checkNotNullParameter(str, "idToken");
            Intrinsics.checkNotNullParameter(str2, "accessToken");
            this.idToken = str;
            this.accessToken = str2;
            this.refreshToken = str3;
            this.expiresIn = num;
            this.tokenType = str4;
            this.accountId = str5;
            this.planType = str6;
        }

        public final String getIdToken() {
            return this.idToken;
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

        public final String getAccountId() {
            return this.accountId;
        }

        public final String getPlanType() {
            return this.planType;
        }
    }

    public final TokenResult exchangeCode(String code, String verifier) {
        TokenResult.Failure failure;
        Response response;
        Response response2;
        String strString;
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(verifier, "verifier");
        OauthConstants.OpenAiCodex openAiCodex = OauthConstants.OpenAiCodex.INSTANCE;
        Request requestBuild = new Request.Builder().url(OauthConstants.OpenAiCodex.TOKEN_URL).post(new FormBody.Builder((Charset) null, 1, (DefaultConstructorMarker) null).add("grant_type", "authorization_code").add("code", code).add("redirect_uri", OauthConstants.OpenAiCodex.REDIRECT_URI).add("client_id", OauthConstants.OpenAiCodex.CLIENT_ID).add("code_verifier", verifier).build()).header(HttpHeaders.ACCEPT, "application/json").build();
        try {
            Result.Companion companion = Result.Companion;
            OauthRepository oauthRepository = this;
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
        String strOptString = jSONObject.optString("id_token");
        Intrinsics.checkNotNull(strOptString);
        String str = !StringsKt.isBlank(strOptString) ? strOptString : null;
        if (str == null) {
            TokenResult.Failure failure3 = new TokenResult.Failure("missing id_token");
            CloseableKt.closeFinally(response, (Throwable) null);
            return failure3;
        }
        String strOptString2 = jSONObject.optString("access_token");
        Intrinsics.checkNotNull(strOptString2);
        String str2 = !StringsKt.isBlank(strOptString2) ? strOptString2 : null;
        if (str2 == null) {
            TokenResult.Failure failure4 = new TokenResult.Failure("missing access_token");
            CloseableKt.closeFinally(response, (Throwable) null);
            return failure4;
        }
        String strOptString3 = jSONObject.optString("refresh_token");
        Intrinsics.checkNotNull(strOptString3);
        String str3 = !StringsKt.isBlank(strOptString3) ? strOptString3 : null;
        Integer numValueOf = jSONObject.has("expires_in") ? Integer.valueOf(jSONObject.optInt("expires_in")) : null;
        String strOptString4 = jSONObject.optString("token_type");
        Intrinsics.checkNotNull(strOptString4);
        String str4 = !StringsKt.isBlank(strOptString4) ? strOptString4 : null;
        Pair<String, String> jwtClaims = parseJwtClaims(str);
        TokenResult.Success success = new TokenResult.Success(new TokenSet(str, str2, str3, numValueOf, str4, jwtClaims != null ? (String) jwtClaims.getFirst() : null, jwtClaims != null ? (String) jwtClaims.getSecond() : null));
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

    private final Pair<String, String> parseJwtClaims(String jwt) {
        Object obj;
        Object obj2;
        String strOptString;
        String strOptString2;
        List listSplit$default = StringsKt.split$default(jwt, new char[]{'.'}, false, 0, 6, (Object) null);
        String str = null;
        if (listSplit$default.size() < 2) {
            return null;
        }
        try {
            Result.Companion companion = Result.Companion;
            OauthRepository oauthRepository = this;
            byte[] bArrDecode = Base64.decode((String) listSplit$default.get(1), 9);
            Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(...)");
            obj = Result.constructor-impl(new String(bArrDecode, Charsets.UTF_8));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        if (Result.exceptionOrNull-impl(obj) != null) {
            return null;
        }
        String str2 = (String) obj;
        try {
            Result.Companion companion3 = Result.Companion;
            OauthRepository oauthRepository2 = this;
            obj2 = Result.constructor-impl(new JSONObject(str2));
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.Companion;
            obj2 = Result.constructor-impl(ResultKt.createFailure(th2));
        }
        if (Result.isFailure-impl(obj2)) {
            obj2 = null;
        }
        JSONObject jSONObject = (JSONObject) obj2;
        if (jSONObject == null) {
            return null;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("https://api.openai.com/auth");
        if (jSONObjectOptJSONObject == null || (strOptString = jSONObjectOptJSONObject.optString("chatgpt_account_id")) == null || StringsKt.isBlank(strOptString)) {
            strOptString = null;
        }
        if (jSONObjectOptJSONObject != null && (strOptString2 = jSONObjectOptJSONObject.optString("chatgpt_plan_type")) != null && !StringsKt.isBlank(strOptString2)) {
            str = strOptString2;
        }
        return TuplesKt.to(strOptString, str);
    }
}
