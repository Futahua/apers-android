package com.hermes.android.handoff;

import android.content.Context;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.BootstrapManager;
import com.hermes.android.HermesPaths;
import com.hermes.android.LocalizedError;
import com.hermes.android.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: HandoffExporter.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0014B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0002J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/hermes/android/handoff/HandoffExporter;", BuildConfig.FLAVOR, "context", "Landroid/content/Context;", "bootstrap", "Lcom/hermes/android/BootstrapManager;", "<init>", "(Landroid/content/Context;Lcom/hermes/android/BootstrapManager;)V", "handoffDir", "Ljava/io/File;", "exportAll", BuildConfig.FLAVOR, "deviceId", BuildConfig.FLAVOR, "shellQuote", "s", "copyAsset", BuildConfig.FLAVOR, "assetPath", "dest", "ExportException", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class HandoffExporter {
    public static final int $stable = 8;
    private final BootstrapManager bootstrap;
    private final Context context;
    private final File handoffDir;

    public HandoffExporter(Context context, BootstrapManager bootstrapManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bootstrapManager, "bootstrap");
        this.context = context;
        this.bootstrap = bootstrapManager;
        this.handoffDir = HermesPaths.INSTANCE.handoffDir(context);
    }

    /* JADX INFO: compiled from: HandoffExporter.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\b\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u0003B+\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\tX\u0096\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/hermes/android/handoff/HandoffExporter$ExportException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "Lcom/hermes/android/LocalizedError;", "msg", BuildConfig.FLAVOR, "resId", BuildConfig.FLAVOR, "formatArgs", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;I[Ljava/lang/Object;)V", "getResId", "()I", "getFormatArgs", "()[Ljava/lang/Object;", "[Ljava/lang/Object;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class ExportException extends Exception implements LocalizedError {
        public static final int $stable = 8;
        private final Object[] formatArgs;
        private final int resId;

        public int getResId() {
            return this.resId;
        }

        public /* synthetic */ ExportException(String str, int i, Object[] objArr, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? new Object[0] : objArr);
        }

        public Object[] getFormatArgs() {
            return this.formatArgs;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ExportException(String str, int i, Object[] objArr) {
            super(str);
            Intrinsics.checkNotNullParameter(str, "msg");
            Intrinsics.checkNotNullParameter(objArr, "formatArgs");
            this.resId = i;
            this.formatArgs = objArr;
        }
    }

    public final byte[] exportAll(String deviceId) throws IOException {
        Object obj;
        Object next;
        String strTakeLast;
        String strRemovePrefix;
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        this.handoffDir.mkdirs();
        copyAsset("handoff/handoff_core.py", new File(this.handoffDir, "handoff_core.py"));
        copyAsset("handoff/handoff_export.py", new File(this.handoffDir, "handoff_export.py"));
        File file = new File(this.handoffDir, "outgoing.json");
        try {
            Result.Companion companion = Result.Companion;
            HandoffExporter handoffExporter = this;
            Result.constructor-impl(Boolean.valueOf(file.delete()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.constructor-impl(ResultKt.createFailure(th));
        }
        try {
            Pair pairRunInTermux$default = BootstrapManager.runInTermux$default(this.bootstrap, "hermes sessions list >/dev/null 2>&1 ; cd \"$HOME/.hermes/handoff\" && HANDOFF_DEVICE_ID=" + shellQuote(deviceId) + " python3 handoff_export.py outgoing.json", 0L, false, 6, (Object) null);
            int iIntValue = ((Number) pairRunInTermux$default.component1()).intValue();
            String str = (String) pairRunInTermux$default.component2();
            Iterator it = StringsKt.lineSequence(str).iterator();
            while (true) {
                obj = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (StringsKt.startsWith$default((String) next, "HANDOFF_EXPORT_OK:", false, 2, (Object) null)) {
                    break;
                }
            }
            if (((String) next) != null) {
                if (!file.exists()) {
                    throw new ExportException("export file not created", R.string.handoff_err_export_missing, null, 4, null);
                }
                byte[] bytes = FilesKt.readBytes(file);
                try {
                    Result.Companion companion3 = Result.Companion;
                    HandoffExporter handoffExporter2 = this;
                    Result.constructor-impl(Boolean.valueOf(file.delete()));
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.Companion;
                    Result.constructor-impl(ResultKt.createFailure(th2));
                }
                return bytes;
            }
            Iterator it2 = StringsKt.lineSequence(str).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next2 = it2.next();
                if (StringsKt.startsWith$default((String) next2, "HANDOFF_ERROR:", false, 2, (Object) null)) {
                    obj = next2;
                    break;
                }
            }
            String str2 = (String) obj;
            if (str2 == null || (strRemovePrefix = StringsKt.removePrefix(str2, "HANDOFF_ERROR:")) == null || (strTakeLast = StringsKt.trim(strRemovePrefix).toString()) == null) {
                strTakeLast = StringsKt.takeLast(StringsKt.trim(str).toString(), 300);
            }
            throw new ExportException("export failed (rc=" + iIntValue + "): " + strTakeLast, R.string.handoff_err_export_failed, new Object[]{Integer.valueOf(iIntValue), strTakeLast});
        } catch (Throwable th3) {
            try {
                Result.Companion companion5 = Result.Companion;
                Result.constructor-impl(Boolean.valueOf(file.delete()));
            } catch (Throwable th4) {
                Result.Companion companion6 = Result.Companion;
                Result.constructor-impl(ResultKt.createFailure(th4));
            }
            throw th3;
        }
    }

    private final String shellQuote(String s) {
        return "'" + StringsKt.replace$default(s, "'", "'\\''", false, 4, (Object) null) + "'";
    }

    private final void copyAsset(String assetPath, File dest) throws IOException {
        FileOutputStream fileOutputStreamOpen = this.context.getAssets().open(assetPath);
        try {
            InputStream inputStream = fileOutputStreamOpen;
            fileOutputStreamOpen = new FileOutputStream(dest);
            try {
                Intrinsics.checkNotNull(inputStream);
                ByteStreamsKt.copyTo$default(inputStream, fileOutputStreamOpen, 0, 2, (Object) null);
                CloseableKt.closeFinally(fileOutputStreamOpen, (Throwable) null);
                CloseableKt.closeFinally(fileOutputStreamOpen, (Throwable) null);
            } finally {
            }
        } finally {
        }
    }
}
