package com.hermes.android.handoff;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HandoffJson.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/hermes/android/handoff/HandoffJson;", BuildConfig.FLAVOR, "<init>", "()V", "FORM_FEED", BuildConfig.FLAVOR, "quote", BuildConfig.FLAVOR, "s", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class HandoffJson {
    public static final int $stable = 0;
    private static final char FORM_FEED = '\f';
    public static final HandoffJson INSTANCE = new HandoffJson();

    private HandoffJson() {
    }

    public final String quote(String s) {
        Intrinsics.checkNotNullParameter(s, "s");
        StringBuilder sb = new StringBuilder(s.length() + 2);
        sb.append('\"');
        int length = s.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = s.charAt(i);
            if (cCharAt == '\f') {
                sb.append("\\f");
            } else if (cCharAt == '\r') {
                sb.append("\\r");
            } else if (cCharAt == '\"') {
                sb.append("\\\"");
            } else if (cCharAt == '\\') {
                sb.append("\\\\");
            } else {
                switch (cCharAt) {
                    case '\b':
                        sb.append("\\b");
                        break;
                    case '\t':
                        sb.append("\\t");
                        break;
                    case '\n':
                        sb.append("\\n");
                        break;
                    default:
                        if (Intrinsics.compare(cCharAt, 32) < 0) {
                            String str = String.format("\\u%04x", Arrays.copyOf(new Object[]{Integer.valueOf(cCharAt)}, 1));
                            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                            sb.append(str);
                        } else {
                            sb.append(cCharAt);
                        }
                        break;
                }
            }
        }
        sb.append('\"');
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
