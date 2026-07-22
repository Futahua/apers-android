package com.hermes.android.data.oauth;

import android.util.Base64;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: PkceGenerator.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/hermes/android/data/oauth/PkceGenerator;", BuildConfig.FLAVOR, "<init>", "()V", "FLAGS", BuildConfig.FLAVOR, "generateVerifier", BuildConfig.FLAVOR, "deriveChallenge", "verifier", "generateState", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class PkceGenerator {
    public static final int $stable = 0;
    private static final int FLAGS = 11;
    public static final PkceGenerator INSTANCE = new PkceGenerator();

    private PkceGenerator() {
    }

    public final String generateVerifier() {
        byte[] bArr = new byte[32];
        new SecureRandom().nextBytes(bArr);
        String strEncodeToString = Base64.encodeToString(bArr, 11);
        Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
        return strEncodeToString;
    }

    public final String deriveChallenge(String verifier) throws NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(verifier, "verifier");
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = verifier.getBytes(Charsets.US_ASCII);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        String strEncodeToString = Base64.encodeToString(messageDigest.digest(bytes), 11);
        Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
        return strEncodeToString;
    }

    public final String generateState() {
        byte[] bArr = new byte[16];
        new SecureRandom().nextBytes(bArr);
        String strEncodeToString = Base64.encodeToString(bArr, 11);
        Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
        return strEncodeToString;
    }
}
