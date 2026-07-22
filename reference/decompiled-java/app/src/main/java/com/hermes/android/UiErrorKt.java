package com.hermes.android;

import android.content.Context;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UiError.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"uiMessage", "", "", "context", "Landroid/content/Context;", "app_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class UiErrorKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final String uiMessage(Throwable th, Context context) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        LocalizedError localizedError = th instanceof LocalizedError ? (LocalizedError) th : null;
        if (localizedError != null && localizedError.getResId() != 0) {
            int resId = localizedError.getResId();
            Object[] formatArgs = localizedError.getFormatArgs();
            String string = context.getString(resId, Arrays.copyOf(formatArgs, formatArgs.length));
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }
        String message = th.getMessage();
        if (message != null) {
            return message;
        }
        String string2 = context.getString(R.string.error_unknown);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        return string2;
    }
}
