package com.hermes.android;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UiError.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\b\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u0003B+\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\tX\u0096\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/hermes/android/LocalizedIllegalState;", "Ljava/lang/IllegalStateException;", "Lkotlin/IllegalStateException;", "Lcom/hermes/android/LocalizedError;", NotificationCompat.CATEGORY_MESSAGE, "", "resId", "", "formatArgs", "", "", "<init>", "(Ljava/lang/String;I[Ljava/lang/Object;)V", "getResId", "()I", "getFormatArgs", "()[Ljava/lang/Object;", "[Ljava/lang/Object;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LocalizedIllegalState extends IllegalStateException implements LocalizedError {
    public static final int $stable = 8;
    private final Object[] formatArgs;
    private final int resId;

    @Override // com.hermes.android.LocalizedError
    public int getResId() {
        return this.resId;
    }

    public /* synthetic */ LocalizedIllegalState(String str, int i, Object[] objArr, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? new Object[0] : objArr);
    }

    @Override // com.hermes.android.LocalizedError
    public Object[] getFormatArgs() {
        return this.formatArgs;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalizedIllegalState(String str, int i, Object[] objArr) {
        super(str);
        Intrinsics.checkNotNullParameter(str, NotificationCompat.CATEGORY_MESSAGE);
        Intrinsics.checkNotNullParameter(objArr, "formatArgs");
        this.resId = i;
        this.formatArgs = objArr;
    }
}
