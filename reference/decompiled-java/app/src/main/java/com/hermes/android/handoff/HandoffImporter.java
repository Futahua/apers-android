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
import org.json.JSONObject;

/* JADX INFO: compiled from: HandoffImporter.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0015\u0016B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/hermes/android/handoff/HandoffImporter;", BuildConfig.FLAVOR, "context", "Landroid/content/Context;", "bootstrap", "Lcom/hermes/android/BootstrapManager;", "<init>", "(Landroid/content/Context;Lcom/hermes/android/BootstrapManager;)V", "handoffDir", "Ljava/io/File;", "importBundle", "Lcom/hermes/android/handoff/HandoffImporter$Stats;", "bundleJson", BuildConfig.FLAVOR, "parseStats", "json", BuildConfig.FLAVOR, "copyAsset", BuildConfig.FLAVOR, "assetPath", "dest", "ImportException", "Stats", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class HandoffImporter {
    public static final int $stable = 8;
    private final BootstrapManager bootstrap;
    private final Context context;
    private final File handoffDir;

    public HandoffImporter(Context context, BootstrapManager bootstrapManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bootstrapManager, "bootstrap");
        this.context = context;
        this.bootstrap = bootstrapManager;
        this.handoffDir = HermesPaths.INSTANCE.handoffDir(context);
    }

    /* JADX INFO: compiled from: HandoffImporter.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\b\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u0003B+\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\tX\u0096\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/hermes/android/handoff/HandoffImporter$ImportException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "Lcom/hermes/android/LocalizedError;", "msg", BuildConfig.FLAVOR, "resId", BuildConfig.FLAVOR, "formatArgs", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;I[Ljava/lang/Object;)V", "getResId", "()I", "getFormatArgs", "()[Ljava/lang/Object;", "[Ljava/lang/Object;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class ImportException extends Exception implements LocalizedError {
        public static final int $stable = 8;
        private final Object[] formatArgs;
        private final int resId;

        public int getResId() {
            return this.resId;
        }

        public /* synthetic */ ImportException(String str, int i, Object[] objArr, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? new Object[0] : objArr);
        }

        public Object[] getFormatArgs() {
            return this.formatArgs;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ImportException(String str, int i, Object[] objArr) {
            super(str);
            Intrinsics.checkNotNullParameter(str, "msg");
            Intrinsics.checkNotNullParameter(objArr, "formatArgs");
            this.resId = i;
            this.formatArgs = objArr;
        }
    }

    /* JADX INFO: compiled from: HandoffImporter.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003JO\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\rR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\r¨\u0006\""}, d2 = {"Lcom/hermes/android/handoff/HandoffImporter$Stats;", BuildConfig.FLAVOR, "sessionsAdded", BuildConfig.FLAVOR, "sessionsExisting", "messagesAdded", "messagesSkipped", "memAdded", "memMerged", "memUnchanged", "<init>", "(IIIIIII)V", "getSessionsAdded", "()I", "getSessionsExisting", "getMessagesAdded", "getMessagesSkipped", "getMemAdded", "getMemMerged", "getMemUnchanged", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", "toString", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class Stats {
        public static final int $stable = 0;
        private final int memAdded;
        private final int memMerged;
        private final int memUnchanged;
        private final int messagesAdded;
        private final int messagesSkipped;
        private final int sessionsAdded;
        private final int sessionsExisting;

        public static /* synthetic */ Stats copy$default(Stats stats, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Object obj) {
            if ((i8 & 1) != 0) {
                i = stats.sessionsAdded;
            }
            if ((i8 & 2) != 0) {
                i2 = stats.sessionsExisting;
            }
            int i9 = i2;
            if ((i8 & 4) != 0) {
                i3 = stats.messagesAdded;
            }
            int i10 = i3;
            if ((i8 & 8) != 0) {
                i4 = stats.messagesSkipped;
            }
            int i11 = i4;
            if ((i8 & 16) != 0) {
                i5 = stats.memAdded;
            }
            int i12 = i5;
            if ((i8 & 32) != 0) {
                i6 = stats.memMerged;
            }
            int i13 = i6;
            if ((i8 & 64) != 0) {
                i7 = stats.memUnchanged;
            }
            return stats.copy(i, i9, i10, i11, i12, i13, i7);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getSessionsAdded() {
            return this.sessionsAdded;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getSessionsExisting() {
            return this.sessionsExisting;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final int getMessagesAdded() {
            return this.messagesAdded;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final int getMessagesSkipped() {
            return this.messagesSkipped;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final int getMemAdded() {
            return this.memAdded;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final int getMemMerged() {
            return this.memMerged;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final int getMemUnchanged() {
            return this.memUnchanged;
        }

        public final Stats copy(int sessionsAdded, int sessionsExisting, int messagesAdded, int messagesSkipped, int memAdded, int memMerged, int memUnchanged) {
            return new Stats(sessionsAdded, sessionsExisting, messagesAdded, messagesSkipped, memAdded, memMerged, memUnchanged);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Stats)) {
                return false;
            }
            Stats stats = (Stats) other;
            return this.sessionsAdded == stats.sessionsAdded && this.sessionsExisting == stats.sessionsExisting && this.messagesAdded == stats.messagesAdded && this.messagesSkipped == stats.messagesSkipped && this.memAdded == stats.memAdded && this.memMerged == stats.memMerged && this.memUnchanged == stats.memUnchanged;
        }

        public int hashCode() {
            return (((((((((((Integer.hashCode(this.sessionsAdded) * 31) + Integer.hashCode(this.sessionsExisting)) * 31) + Integer.hashCode(this.messagesAdded)) * 31) + Integer.hashCode(this.messagesSkipped)) * 31) + Integer.hashCode(this.memAdded)) * 31) + Integer.hashCode(this.memMerged)) * 31) + Integer.hashCode(this.memUnchanged);
        }

        public String toString() {
            return "Stats(sessionsAdded=" + this.sessionsAdded + ", sessionsExisting=" + this.sessionsExisting + ", messagesAdded=" + this.messagesAdded + ", messagesSkipped=" + this.messagesSkipped + ", memAdded=" + this.memAdded + ", memMerged=" + this.memMerged + ", memUnchanged=" + this.memUnchanged + ")";
        }

        public Stats(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            this.sessionsAdded = i;
            this.sessionsExisting = i2;
            this.messagesAdded = i3;
            this.messagesSkipped = i4;
            this.memAdded = i5;
            this.memMerged = i6;
            this.memUnchanged = i7;
        }

        public final int getSessionsAdded() {
            return this.sessionsAdded;
        }

        public final int getSessionsExisting() {
            return this.sessionsExisting;
        }

        public final int getMessagesAdded() {
            return this.messagesAdded;
        }

        public final int getMessagesSkipped() {
            return this.messagesSkipped;
        }

        public final int getMemAdded() {
            return this.memAdded;
        }

        public final int getMemMerged() {
            return this.memMerged;
        }

        public final int getMemUnchanged() {
            return this.memUnchanged;
        }
    }

    public final Stats importBundle(byte[] bundleJson) throws IOException {
        Object obj;
        Object next;
        String strTakeLast;
        String strRemovePrefix;
        Intrinsics.checkNotNullParameter(bundleJson, "bundleJson");
        this.handoffDir.mkdirs();
        copyAsset("handoff/handoff_core.py", new File(this.handoffDir, "handoff_core.py"));
        copyAsset("handoff/handoff_import.py", new File(this.handoffDir, "handoff_import.py"));
        File file = new File(this.handoffDir, "incoming.json");
        FilesKt.writeBytes(file, bundleJson);
        try {
            Pair pairRunInTermux$default = BootstrapManager.runInTermux$default(this.bootstrap, "hermes sessions list >/dev/null 2>&1 ; cd \"$HOME/.hermes/handoff\" && python3 handoff_import.py incoming.json", 0L, false, 6, (Object) null);
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
                if (StringsKt.startsWith$default((String) next, "HANDOFF_STATS:", false, 2, (Object) null)) {
                    break;
                }
            }
            String str2 = (String) next;
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
            String str3 = (String) obj;
            if (str2 == null) {
                if (str3 == null || (strRemovePrefix = StringsKt.removePrefix(str3, "HANDOFF_ERROR:")) == null || (strTakeLast = StringsKt.trim(strRemovePrefix).toString()) == null) {
                    strTakeLast = StringsKt.takeLast(StringsKt.trim(str).toString(), 300);
                }
                throw new ImportException("import failed (rc=" + iIntValue + "): " + strTakeLast, R.string.handoff_err_import_failed, new Object[]{Integer.valueOf(iIntValue), strTakeLast});
            }
            Stats stats = parseStats(StringsKt.removePrefix(str2, "HANDOFF_STATS:"));
            try {
                Result.Companion companion = Result.Companion;
                HandoffImporter handoffImporter = this;
                Result.constructor-impl(Boolean.valueOf(file.delete()));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                Result.constructor-impl(ResultKt.createFailure(th));
            }
            return stats;
        } catch (Throwable th2) {
            try {
                Result.Companion companion3 = Result.Companion;
                Result.constructor-impl(Boolean.valueOf(file.delete()));
            } catch (Throwable th3) {
                Result.Companion companion4 = Result.Companion;
                Result.constructor-impl(ResultKt.createFailure(th3));
            }
            throw th2;
        }
    }

    private final Stats parseStats(String json) throws ImportException {
        Object obj;
        try {
            Result.Companion companion = Result.Companion;
            HandoffImporter handoffImporter = this;
            obj = Result.constructor-impl(new JSONObject(json));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        if (Result.exceptionOrNull-impl(obj) != null) {
            throw new ImportException("import stats parse failed: " + StringsKt.take(json, 200), R.string.handoff_err_import_parse, new String[]{StringsKt.take(json, 200)});
        }
        JSONObject jSONObject = (JSONObject) obj;
        return new Stats(jSONObject.optInt("sessions_added"), jSONObject.optInt("sessions_existing"), jSONObject.optInt("messages_added"), jSONObject.optInt("messages_skipped"), jSONObject.optInt("mem_added"), jSONObject.optInt("mem_merged"), jSONObject.optInt("mem_unchanged"));
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
